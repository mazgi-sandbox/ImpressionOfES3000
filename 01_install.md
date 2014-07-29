http://enterprise.huawei.com/en/products/itapp/server/high-performance-pcIe-card/hw-194918.htm

```shellsession
[root@Gottfried] # uname -a
Linux Gottfried 3.12.20-gentoo #1 SMP Mon Jun 2 01:07:15 JST 2014 x86_64 Intel(R) Xeon(R) CPU E5-2420 0 @ 1.90GHz GenuineIntel GNU/Linux
```

```shellsession
[root@Leibniz] # uname -a
Linux Leibniz 3.12.20-gentoo #1 SMP Mon Jun 2 01:08:12 JST 2014 x86_64 Intel(R) Xeon(R) CPU E5-2420 0 @ 1.90GHz GenuineIntel GNU/Linux
```

```shellsession
[root@Gottfried] # sha1sum *.zip
0f99a6f32dd84def872fda6c5021b6e8733e06d7  Tecal ES3000 Driver 2.0.0.41.zip
9aa277392ee6f96c934131240c554f4d106c5be0  Tecal ES3000 Driver SRC 2.0.0.41.zip
25d1a167bb9fb2584b65b79f528f57315f473bf6  Tecal_ES3000_Firmware_328.zip
```

## Extract files

```shellsession
[root@Gottfried] # cd ~/ES3000/
[root@Gottfried] # for zip in *.zip
do
dir="$(echo ${zip%.*} | tr ' ' '_')"
mkdir -p "${dir}"
unzip -od "${dir}" "${zip}"             
done
Archive:  Tecal ES3000 Driver 2.0.0.41.zip
  inflating: Tecal_ES3000_Driver_2.0.0.41/Vmware/ESX 4.1/hio-2.0.0.41.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Vmware/ESXi 5.x/hio-2.0.0.41.vib  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Windows/HW_SSD_Driver_v2.0.0.40_3.exe  
  inflating: Tecal_ES3000_Driver_2.0.0.41/filelist.txt  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/ol6u2-x64/hio-2.0.0.41-2.6.32_300.3.1.el6uek.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u1-x64/hio-2.0.0.41-2.6.18_53.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u2-x64/hio-2.0.0.41-2.6.18_92.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u3-x64/hio-2.0.0.41-2.6.18_128.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u4-x64/hio-2.0.0.41-2.6.18_164.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u5-x64/hio-2.0.0.41-2.6.18_194.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u6-x64/hio-2.0.0.41-2.6.18_238.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u7-x64/hio-2.0.0.41-2.6.18_274.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u8-x64/hio-2.0.0.41-2.6.18_308.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5u9-x64/hio-2.0.0.41-2.6.18_348.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel5-x64/hio-2.0.0.41-2.6.18_8.el5.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel6u1-x64/hio-2.0.0.41-2.6.32_131.0.15.el6.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel6u2-x64/hio-2.0.0.41-2.6.32_220.el6.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel6u3-x64/hio-2.0.0.41-2.6.32_279.el6.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel6u4-2.6.32-358.23.2.el6.x86_64/hio-2.0.0.41-2.6.32_358.23.2.el6.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel6u4-x64/hio-2.0.0.41-2.6.32_358.el6.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel6u5-x64/hio-2.0.0.41-2.6.32_431.el6.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/rhel6-x64/hio-2.0.0.41-2.6.32_71.el6.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/sles11sp1-2.6.32.59-x64/hio-2.0.0.41-2.6.32.59_0.3_default.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/sles11sp1-x64/hio-2.0.0.41-2.6.32.12_0.7_default.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/sles11sp2-x64/hio-2.0.0.41-3.0.13_0.27_default.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/sles11sp3-x64/hio-2.0.0.41-3.0.76_0.11_default.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/sles11-x64/hio-2.0.0.41-2.6.27.19_5_default.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/Linux/UVP-3.0.58-0.6.6-xen-x64/hio-2.0.0.41-3.0.58_0.6.6_xen.x86_64.rpm  
  inflating: Tecal_ES3000_Driver_2.0.0.41/SNMP/hio_snmp-2.0-0.39.x86_64.rpm  
Archive:  Tecal ES3000 Driver SRC 2.0.0.41.zip
  inflating: Tecal_ES3000_Driver_SRC_2.0.0.41/Linux/src/hio/hio.c  
  inflating: Tecal_ES3000_Driver_SRC_2.0.0.41/Linux/src/hio/hio.h  
  inflating: Tecal_ES3000_Driver_SRC_2.0.0.41/Linux/src/hio/Makefile  
  inflating: Tecal_ES3000_Driver_SRC_2.0.0.41/Vmware/src/drv/hio.c  
Archive:  Tecal_ES3000_Firmware_328.zip
  inflating: Tecal_ES3000_Firmware_328/hio_fw_328  
  inflating: Tecal_ES3000_Firmware_328/read me first.txt  
```

## Install firmware

```shellsession
[root@Gottfried] # mkdir -p /lib/firmware/hio/
[root@Gottfried] # cp -pv ~/ES3000/Tecal_ES3000_Firmware_328/hio_fw_328 /lib/firmware/hio/
'/root/ES3000/Tecal_ES3000_Firmware_328/hio_fw_328' -> '/lib/firmware/hio/hio_fw_328'
```

## Build kernel module

```shellsession
[root@Gottfried] # cd ~/ES3000/Tecal_ES3000_Driver_SRC_2.0.0.41/Linux/src/hio
[root@Gottfried] # make -C /usr/src/linux M="${PWD}" modules
make: Entering directory `/usr/src/linux-3.12.20-gentoo'
  CC [M]  /root/ES3000/Tecal_ES3000_Driver_SRC_2.0.0.41/Linux/src/hio/hio.o
  Building modules, stage 2.
  MODPOST 1 modules
  CC      /root/ES3000/Tecal_ES3000_Driver_SRC_2.0.0.41/Linux/src/hio/hio.mod.o
  LD [M]  /root/ES3000/Tecal_ES3000_Driver_SRC_2.0.0.41/Linux/src/hio/hio.ko
make: Leaving directory `/usr/src/linux-3.12.20-gentoo'
[root@Gottfried] # ls -al hio.ko
-rw-r--r-- 1 root root 119167 Jul 29 01:15 hio.ko
[root@Gottfried] # sha1sum hio.ko
8aa40ad66d74f939fb6ef622d20f42e6cba2d803  hio.ko
[root@Gottfried] # mkdir -p /lib/modules/$(uname -r)/kernel/drivers/hio/
[root@Gottfried] # install -m 644 hio.ko /lib/modules/$(uname -r)/kernel/drivers/hio/
[root@Gottfried] # ls -al /lib/modules/$(uname -r)/kernel/drivers/hio/
total 120
drwxr-xr-x 1 root root     12 Jul 29 01:33 ./
drwxr-xr-x 1 root root    352 Jul 29 01:29 ../
-rw-r--r-- 1 root root 119167 Jul 29 01:33 hio.ko
[root@Gottfried] # depmod -a
```

```shellsession
[root@Gottfried] # lsmod | grep hio
[root@Gottfried] # modprobe hio
[root@Gottfried] # lsmod | grep hio
hio                    59547  0 
```

## Create filesystem

```shellsession
[root@Gottfried] # gdisk /dev/hioa
GPT fdisk (gdisk) version 0.8.10

Partition table scan:
  MBR: not present
  BSD: not present
  APM: not present
  GPT: not present

Creating new GPT entries.

Command (? for help): n
Partition number (1-128, default 1): 
First sector (34-2352611294, default = 2048) or {+-}size{KMGTP}: 
Last sector (2048-2352611294, default = 2352611294) or {+-}size{KMGTP}: 
Current type is 'Linux filesystem'
Hex code or GUID (L to show codes, Enter = 8300): 
Changed type of partition to 'Linux filesystem'

Command (? for help): w

Final checks complete. About to write GPT data. THIS WILL OVERWRITE EXISTING
PARTITIONS!!

Do you want to proceed? (Y/N): y
OK; writing new GUID partition table (GPT) to /dev/hioa.
The operation has completed successfully.
[root@Gottfried] # gdisk -l /dev/hioa
GPT fdisk (gdisk) version 0.8.10

Partition table scan:
  MBR: protective
  BSD: not present
  APM: not present
  GPT: present

Found valid GPT with protective MBR; using GPT.
Disk /dev/hioa: 2352611328 sectors, 1.1 TiB
Logical sector size: 512 bytes
Disk identifier (GUID): 5CE58824-4757-4824-9FE9-3FE05B7DCDDD
Partition table holds up to 128 entries
First usable sector is 34, last usable sector is 2352611294
Partitions will be aligned on 2048-sector boundaries
Total free space is 2014 sectors (1007.0 KiB)

Number  Start (sector)    End (sector)  Size       Code  Name
   1            2048      2352611294   1.1 TiB     8300  Linux filesystem
```

## Mount filesystem

```shellsession
[root@Gottfried] # mkfs.xfs /dev/hioa1
meta-data=/dev/hioa1             isize=256    agcount=4, agsize=73519039 blks
         =                       sectsz=512   attr=2, projid32bit=0
data     =                       bsize=4096   blocks=294076155, imaxpct=5
         =                       sunit=0      swidth=0 blks
naming   =version 2              bsize=4096   ascii-ci=0
log      =internal log           bsize=4096   blocks=143591, version=2
         =                       sectsz=512   sunit=0 blks, lazy-count=1
realtime =none                   extsz=4096   blocks=0, rtextents=0
[root@Gottfried] # mount /dev/hioa1 /mnt
[root@Gottfried] # mount | grep hioa
/dev/hioa1 on /mnt type xfs (rw)
[root@Gottfried] # df /mnt/
Filesystem      1K-blocks  Used  Available Use% Mounted on
/dev/hioa1     1175730256 32928 1175697328   1% /mnt
```
