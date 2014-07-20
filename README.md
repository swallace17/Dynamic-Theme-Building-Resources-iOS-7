Dynamic Theme Building Resources
=======================================

This collection of resources is desgined to make it as easy as possible for an iOS Winterboard Theme Developer to support every iDevice/Configuration out there, without having to either A) Release Many Different Versions of the said Theme or B) Release One Giant Universal Version Which Wastes Alot of System Space With Files You Dont Need.

How is this going to work? Well first of all- It ain't magic. Your going to have to put forth some extra efforts writing some Bash Scripts. "But I'm just a PhotoShop Wizard/Design Guy!", you cry. "I made a theme to stay out of all that coding stuff!" Well Boo Hoo. If you want your theme to stand out from the crowd and be as simple as possible for the end user to use, your gonna have to put forth a little extra effort. That being said, this is by no means hard, and I've done the difficult parts in advance!:)

Introducing, Dynamic Theme Building.

(Note: All of this is accomplished using Pre/Post Inst Scripts inside your themes .DEB file. Cydia tweaks use these all the time. All I'm doing is using/applying the same scripts in the context of a theme package, which I have personally never seen someone do before. I'm calling it Dynamic Theme Building because that is essentially what we are using these scripts to accomplish, but mostly becuase it sounds cool :D )
***

So, how does this 'Dynamic Theme Building' thing work? Well heres the deal- And yeah, I'm gonna explain it like you're five.

- All Cydia Tweaks/Themes/Whatever are installed with .deb files. These files are a special kind of archive. Think .zip but not.

- With your .deb, you can include Bash Scripts (Basically, a list of terminal commands to run.) These Scripts will run either before you install the package (preinst), after you install the package (postinst), before uninstalling the package (prerm), or after uninstalling the package (postrm). For more in-depth information on these scripts, see here- http://insanelyi.com/topic/5799-how-to-writecode-preinst-postinst-prerm-postrm-scripts/. 
