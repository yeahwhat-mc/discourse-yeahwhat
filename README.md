discourse-yeahwhat
=========================

Discourse customizations for our YEAHWHAT?! forums (http://forums.yeahwh.at). 

### Features

* Minecraft avatars instead of initials
* Minecraft heads plugin (Use `[head:<minecraftplayer>]` to show a 16x16 helm icon in your posts)

### Installation

(Assuming you've installed Discourse via Docker.)

1. Go into your Discourse folder:  
  `cd /var/discourse`
1. Open the container file (default should be `app.yml`) in your favourite editor:  
  `vi containers/app.yml`
1. Move down until you reach the _cmd hooks_ and add the following line in the array:  
  `          - git clone https://github.com/yeahwhat-mc/discourse-yeahwhat.git`
1. Save the file
1. Pull the latest Discourse changes from GitHub repository as well as rebuild the Docker container:  
  `git pull`  
  `./launcher rebuild app`
1. Profit!

### Credits

* @NomNuggetNom's for his [discourse-mcheads](https://github.com/NomNuggetNom/discourse-mcheads) plugin

### Version

1.0.0
