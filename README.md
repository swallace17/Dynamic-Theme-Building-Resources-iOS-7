Dynamic-Theme-Building: Example-Package
=======================================

This is an example of an iOS Winterboard theme using the Pre/Post Installations scripts of the .deb file to automatically build a theme depending on various iDevice specifications. I'd like to coin this concept "Dynamic Theme Building." With these concepts in mind, it is possible to release only one version of your a theme which will then be compatible with all iOS devices, on any firmware, Retina display or not.

Lest there be a misunderstanding: I have not written a magic tool that will make your theme magiacally work on all devices and be perfect. You, the Theme Developer, have to do all the work of supporting various devices and configurations in the first place. All I've done here is provide Theme Developers with an example to reference in order to incorporate "Dynamic Theme Building" into their own themes.

You, the Theme Developer, will have to write bash scripts for your theme that will determine which files get installed into your theme, and which do not depending on the users iDevice, firmware, and screen resolution. Heres the thing though- Its nowhere near as hard as it sounds, and I've done the hard stuff already. Any problems you run into, you should be able to solve using the resources I have provided here.
***
Disclaimer: This package is fully functional- if you convert it to a .deb file you will wind up with a fully-functional theme for Preferences.app. The Icons themselves however, are from my own theme- Ringed. It will be released at a later date, and will fully utilize Dynamic Theme Building. In the meantime, consider it a preview. 
