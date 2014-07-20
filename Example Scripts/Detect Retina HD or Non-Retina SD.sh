#!/bin/bash
#Integrating the following code into your script is an easy way of installing different files based on whether a device has a Retina HD display or a Non-Retina SD Display
##########################################################################################################################################################################

if [ -a /Applications/Preferences.app/iconCache@2x.artwork ]
then
	#Do Stuff for a Retina Device
else
	#Do Stuff for a Non-Retina Device
fi

##########################################################################################################################################################################
#Notes
# The "-a" inside of the parentheticals basically translates to "If 'file x' is present on the system, then do whatever I descripe here, otherwise do this stuff here." 
# In our case, we are checking if the file iconCache@2x.artwork is on the users system, inside the Preferences app. If it is, we know the device is a Retina display. 
# Why check for iconCache@2x.artwork? Its just an arbitrary file that is present on all devices, which has different versions for Retina and Non-Retina devices. If the device were Non-Retina for instance, this file would be named iconCache.artwork. If the device is Retina, the suffix "@2x" will be on the end of the file name, letting us know the devcie has a Retina display.