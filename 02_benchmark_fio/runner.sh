#!/bin/bash

declare pid=$$
declare executedate=$(date +%Y%m%d_%H%M%S)
declare workdir="${PWD}/executed.$(hostname).${executedate}.${pid}"
declare device=hioa
declare -a partitions=('hioa1' 'hioa2' 'hioa3' 'hioa4' 'hioa5')
declare -a filesystems=('ext4' 'xfs' 'btrfs' 'jfs' 'ext4' 'xfs' 'btrfs' 'jfs' 'ext4' 'xfs' 'btrfs' 'jfs' 'ext4' 'xfs' 'btrfs' 'jfs' 'ext4' 'xfs' 'btrfs' 'jfs')

mkdir -p "${workdir}"
trap 'echo "Error occurred!" >> "${workdir}/error.txt"; for e in ${partitions[@]}; do umount -f /mnt/${partition} >> ${workdir}/error.txt; done' EXIT

echo -n 'Create partitions... '
gdisk /dev/${device} >/dev/null <<EOF
o
y
n
1

+200G
8300
n
2

+200G
8300
n
3

+200G
8300
n
4

+200G
8300
n
5

+200G
8300
w
y
EOF
echo 'done.'
gdisk -l /dev/${device} | tee "${workdir}/gdisk.txt"

echo -n 'Make directories... '
for ((i=0; i<${#partitions[@]}; i++)) {
  mkdir -p /mnt/${partitions[i]}/
}
echo 'done.'
ls -ld /mnt/${device}*/ | tee "${workdir}/directories.txt"

for ((i=0; i<${#filesystems[@]}; i++)) {
  filesystem=${filesystems[$i]}
  force_option='-f'
  if [ 'ext4' = ${filesystem} ]; then
    force_option='-F'
  elif [ 'jfs' = ${filesystem} ]; then
    force_option='-q'
  fi
  partition=${partitions[$(($i%${#partitions[@]}))]}
  turnname="${partition}.${filesystem}"

  echo -n 'Formatting & mounting filesystem...'
  umount -f /mnt/${partition} 2> /dev/null
  mkfs.${filesystem} ${force_option} /dev/${partition} > /dev/null 2>&1
  mount /dev/${partition} /mnt/${partition}
  echo 'done.'
  mount | grep "/mnt/${partition}" | tee "${workdir}/mount.${turnname}.txt"
  df /mnt/${partition} | tee "${workdir}/df.${turnname}.txt"
  echo -n 'Running benchmark...'
  for ioengine in sync libaio mmap
  do
    for readwrite in read write randread randwrite
    do
      for blocksize in 1k 2k 4k 8k 16k
      do
        for ((numjobs=1; numjobs<=64;)) {
          for ((iodepth=1; iodepth<=64;)) {
            jobname="job.${turnname}.${ioengine}.${readwrite}.bs${blocksize}.j${numjobs}"
            fio -filename=/mnt/${partition}/fio.bin -ioengine=${ioengine} -direct=1 -invalidate=1 -readwrite=${readwrite} -blocksize=${blocksize} -size=1G -numjobs=${numjobs} -iodepth=${iodepth} -group_reporting -name=${jobname} | tee "${workdir}/fio.${jobname}.txt"
            iodepth=$((iodepth * 2))
          }
          numjobs=$((numjobs * 2))
        }
      done
    done
  done
  umount /mnt/${partition}
  echo 'done.'
}

