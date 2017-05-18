RACHEL Recovery USB

Description
This USB will set the LED lights, install the saved partitions to the emmc, and then run 1 of 3 scenarios which we call METHODs. Which METHOD runs is determined by the configuration file called "update.sh". Open a text editor and modify the variable "METHOD" to 1 of 3 options outlined below. A log file is stored on the USB (called update.log). It should provide more detailed information when you encounter problems. The name of the wireless access point installed is called "RACHEL".

HowTo
- Follow the instruction here:
http://rachel.golearn.us/wiki/mdwiki.html#!rachel-usb-recovery.md

- Image a RACHEL Recovery USB using an image here:
https://drive.google.com/drive/u/1/folders/0ByHHOxPhKBGafkFYTFIzX2M1cmhPcVU1WjhtMWtrN0xvS2MyZnZ4V0Z4MFFJSmVzejNrU00

- Setup your RACHEL-Plus with the latest OS updates/software (NOTE:  modules do not get imaged)

- Follow the instructions below to create a RACHEL Recovery USB:
http://rachel.golearn.us/wiki/mdwiki.html#!rachel-create-custom-images.md

LED Status Codes Explained
NOTE: The LED codes were modified by RACHEL developers to provide more detailed information on the imaging process. These are NOT the same LED codes that you will see when using the Intel USB Recovery Image.

Wifi fast blink - Initial start up; check for USB
Wifi solid - Booting to recovery image for USB recovery
Wifi breathing (slow fade in/out) + dot - Starting update.sh script (in the top-level of the USB)
Wifi solid BLUE + dot - Update complete; copying log files
Wifi solid BLUE; NO dot - At completion, dot turns OFF when update is complete
Anytime Wifi solid or fast blink AMBER - FAILED Update script; check log file for info

METHODs of Install
"Recovery" for end user CAP recovery (METHOD 1)
- Copy boot, efi, and rootfs partitions to emmc
- Rewrite the hard drive partitions
- DO NOT format any hard drive partitions

"Imager" for large installs when cloning the hard drive (METHOD 2)
- Copy boot, efi, and rootfs partitions to emmc
- Don't touch the hard drive (since you will swap with a cloned one)

"Format" for small installs and/or custom hard drive (METHOD 3)
- Copy boot, efi, and rootfs partitions to emmc
- Rewrite the hard drive partitions
- Format hard drive partitions
- Copy content shell to /media/RACHEL/rachel

WARNING: METHOD 3 will erase all partitions on the hard drive

Changing the recovery method
- Plug the RACHEL Recovery USB into your computer.
- Open the file called update.sh
- Change the METHOD to METHOD 3.

Troubleshooting
If the CAP doesn’t start successfully (LED indicators), restart the CAP and try again. The USB is not recognized as a valid update source about 30% of the time.

Statistics
Note that I didn't notice a read/write difference using USB 2.0 vs 3.0

METHOD 1
Wifi blink - 8s
Wifi solid - 52s
Wifi breathing + dot - 4m45s
Wifi solid + dot - 3s
(At completion, wifi solid; NO dot)
Total time - 5m48s

METHOD 2
Wifi blink - 8s
Wifi solid - 52s
Wifi breathing + dot - 4m39s
Wifi solid + dot - 3s
(At completion, wifi solid; NO dot)
Total time - 5m42s

METHOD 3
Wifi blink - 8s
Wifi solid - 52s
Wifi solid + dot - 0s
Wifi breathing + dot - 4m48s
Wifi solid + dot - 3s
(At completion, wifi solid; NO dot)
Total time - 5m51s
