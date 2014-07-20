Dynamic Theme Building Resources
=======================================

This collection of resources is desgined to make it as easy as possible for an iOS Winterboard Theme Developer to support every iDevice/Configuration out there, without having to either A) Release Many Different Versions of the said Theme or B) Release One Giant Universal Version Which Wastes Alot of System Space With Files You Dont Need. Neither of these options are ideal.

Introducing, Dynamic Theme Building. Think of it as "Smart Themeing." You download a theme from Cydia, and upon installation, the theme package will decide for itself exactly which files are needed (According to iOS Firmware version, type of iDevice, whether or not your device has a Retina display, or any number of other factors.), move them to their correct locations in the theme bundle, and delete the excess from your system. When its all said and done, you are left with a theme in your Winterboard app which is built intelligently, according to your iDevices specifications, and no left-over garbage files sitting on your device which you will never use.

How does this work? Well first of all- It's not magic. Your going to have to put forth some extra effort writing a few Bash Scripts. "But I'm just a PhotoShop Wizard/Design Guy!", you cry. "I made a theme to stay out of all that coding stuff!" Boo hoo. If you want your theme to stand out from the crowd and be as simple as possible for the end user to use, your gonna have to learn a bit of (very simple) coding. That being said, this is by no means hard, and I've done the difficult parts in advance!:)

(Note: All of this is accomplished using Pre/Post Installation Scripts inside your themes .DEB file. Cydia tweaks use these all the time. All I'm doing is using/applying some of the same concepts/scripts in the context of a theme package, which I have personally never seen someone do before. I'm calling it Dynamic Theme Building because that is essentially what we are using these scripts to accomplish, but mostly becuase it sounds cool :D )
***

So, how does this 'Dynamic Theme Building' thing work? Well heres the deal- And yeah, I'm gonna explain it like you're five.

- All Cydia Tweaks/Themes/Whatever are installed with .deb files. These files are a special kind of archive. Think of it like a .zip, except not.

- Packaged inside your .deb, you can include a few Bash Scripts (Basically, a list of terminal commands). These Scripts will run either before you install the package (preinst), after you install the package (postinst), before uninstalling the package (prerm), or after uninstalling the package (postrm). For more in-depth information on these scripts, see here- http://insanelyi.com/topic/5799-how-to-writecode-preinst-postinst-prerm-postrm-scripts/. 

- Using these Scripts, we can pick and choose which parts of a theme we wish to install according to different criteria. For example, an iPad 2 (Or original iPad Mini) will use a different set of files than any other iPad with a Retina display will. Likewise, the files used on an iPhone differ from those on an iPad. Expanding on this issue, there are files which are not only different across device types, but also firmware versions. 

  - To give a quite specific example of a problem which 'Dynamic Theme Building' solves: 
