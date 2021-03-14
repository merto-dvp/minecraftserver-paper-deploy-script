# Minecraft Server - PaperMC Deployment Script
Move &amp; Deploy your PaperMC server with current settings. Tested on Ubuntu 20.04 (AWS, Azure)

# First of all, Why ?

If you have a backup of your PaperMC server, and want to move it on other providers(Ubuntu VM's recommended), you can use this script.
Also, it creates service that will run minecraft server as service.

# How do i run this and try ?

Clone this repo, insert your server backup zip link in the install-start.sh. Run the install-start.sh script and you are done.

       git clone https://github.com/merto-dvp/minecraftserver-paper-deploy-script & cdminecraftserver-paper-deploy-script & sudo bash install-start.sh 

# What does this script do ?

Creates an account for server, (named minecraft), and this acc owns the data.
Creates default directories that PaperMC creates & runs. (Assumes that you have default PaperMC directory backup)

Downloads ur server backup 
 -You have to provide a link that downloadable with wget, I use DropBox
 -It should be an archive (zip recommended), so script will extract.
 
Extracts your server archive.

Copies data to /opt/minecraft/survival

Deletes the unused stuff.

Gets user rights of directories for minecraft user.

Creates the service minecraft@survival.

Enables the service minecraft@survival.

# How can i check my server status, logs, etc.?

You can login to minecraft account with su - minecraft.
But at first you need to change password of that account.
While you are root, or go get the rights and change password with

    sudo passwd minecraft

And change password of that account.

After that do these steps:

    su - minecraft (Login to minecraft account)
    screen -r






