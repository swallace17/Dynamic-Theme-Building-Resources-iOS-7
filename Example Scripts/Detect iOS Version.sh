#!/bin/bash
#Integrating the following code into your script is an easy way of installing different files based on which iOS firmware version the user is running.
######################################################################################################################################################

#Declaring Variables
iOSfirmware=$(sw_vers -productVersion)
#END Variables

#Declaring Arrarys
HighFirmware[0]='7.1'
HighFirmware[1]='7.1.1'
HighFirmware[2]='7.1.2'
#END Arrays

#Code
echo "Reporting iOS Version"
if [[ " ${HighFirmware[*]} " == *"$iOSfirmware"* ]] #This peice of code basically translates to "If the iOS firmware version is equal to any of the versions stored in the array we made before, then do this. If the version the user is running is not stored in the array, then do this other thing."
then
	echo "iDevice is running $iOSfirmware, a version at or above iOS 7.1."
	#Do Stuff Needed for iOS 7.1.x device
else
	echo "iDevice is running $iOSfirmware, a version below iOS 7.1."
	#Do Stuff Needed for iOS 7.0.x device
fi
exit 0
#END Code

######################################################################################################################################################
#Notes
# 1) Variables: The variable "iOSfirmware" is made using the the "sw_vers" command. Adding the argument "-productVersion" means that any time the varibale iOSfirmware is used in our script, the users iOS firmware version number is substitued in its place. 
#
# 2) Arrarys: An array is basically just a variable with multiple values. 
#END Notes


