# RACHEL USB "Multitool" Image

## Description:
This is the first script to run when the CAP starts up with the RACHEL Recovery USB plugged in.  It will set the LED lights, install the saved partitions to the emmc, and then run 1 of 3 scenarios.  Which scenario runs is determined by the configuration file called "update.sh".  Open a text editor and modify the variable "METHOD" to 1 of 3 options outlined below.  A log file is also stored on the USB (called update.log).  It should provide more detailed information when you encounter problems.  Wireless AP installed is called "RACHEL".

## Default users
- root ```root:Rachel+1```
- KA Lite ```admin:Rachel+1```
- 192.168.88.1 Admin (change order/hide of modules) ```root:rachel```

## METHOD of Install:
##### "Recovery" for end user CAP recovery (METHOD 1)
- Copy boot, efi, and rootfs partitions to emmc
- Rewrite the hard drive partitions
- DO NOT format any hard drive partitions

##### "Imager" for large installs when cloning the hard drive (METHOD 2)
- Copy boot, efi, and rootfs partitions to emmc
- Don't touch the hard drive (since you will swap with a cloned one)

##### "Format" for small installs and/or custom hard drive (METHOD 3)
WARNING:  This will erase all partitions on the hard drive
- Copy boot, efi, and rootfs partitions to emmc
- Rewrite the hard drive partitions
- Format hard drive partitions
- Copy content shell to /media/RACHEL/rachel


## LED Status Codes Explained:
```
Wifi blink - Initial start up; check for USB
Wifi solid - Booting to recovery image for USB recovery
Wifi breathing + dot - Starting update.sh script (in the top-level of the USB)
Wifi solid GREEN + dot - Update complete; copying log files
Wifi solid GREEN; NO dot - At completion, dot turns OFF when update is complete
Anytime Wifi solid/flashing AMBER - FAILED Update script; check log file for info
```

## Instructions:
1. Download the RACHEL Recovery USB image
2. Unzip the compressed image
3. Burn the image to a 4GB (minimum) USB using the following command:
```sudo dd if=<path-to>/IntelCAP_RACHEL_USB-Multitool-<version-info>.img of=/dev/<your-device-ID> bs=1m <or 1M, depending on OS>```
4. On this USB, modify the "METHOD" variable in script “update.sh” (top-level of USB)
5. Turn off the CAP
6. Connect the recovery USB disk to the CAP
7. Start the CAP
8. Wait until the CAP finished the update (see LED status codes explained), then push the CAP power button once (no need to hold it down like previous USB recoveries) and wait a couple seconds for the CAP to power off.  Remove the USB drive and start your CAP back up.

## Troubleshooting:
If the CAP doesn’t start successfully (LED indicators), restart the CAP and try again.  The USB is not recognized as a valid update source about 10% of the time.

## Statistics:
Note that I didn't notice a read/write difference using USB 2.0 vs 3.0

##### METHOD 1
```
Wifi blink - 8s
Wifi solid - 52s
Wifi breathing + dot - 4m45s
Wifi solid + dot - 3s
(At completion, wifi solid; NO dot)
Total time - 5m48s
```

##### METHOD 2
```
Wifi blink - 8s
Wifi solid - 52s
Wifi breathing + dot - 4m39s
Wifi solid + dot - 3s
(At completion, wifi solid; NO dot)
Total time - 5m42s
```

##### METHOD 3
```
Wifi blink - 8s
Wifi solid - 52s
Wifi solid + dot - 0s
Wifi breathing + dot - 4m48s
Wifi solid + dot - 3s
(At completion, wifi solid; NO dot)
Total time - 5m51s
```
