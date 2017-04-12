# Momentum for Mac desktop
This is a simple python script that will download the Momentum daily images to a folder on your computer, and point your desktop backgrounds to it.

# Installation
Choose a dir on your computer where you want the pictures saved.
Clone this git repo to that dir

    $ cd ~/Pictures
    $ git clone https://github.com/mattbryson/momentum-desktop-images.git
    $ cd momentum-desktop-images
    $ ./install.sh

# Uninstallation

    $ ./uninstall.sh


# Manual Run
Once you have followed in installation instructions you can manually download the images with this command.

    $ python ./sync_momentum.py

# Debug
Run the python script directly to see any potential errors.  

A `Connection reset by peer` error usually means you have not entered a client ID.

A `400 Bad Request` usually means your `CLIENT_ID` is wrong / not recognised.

Double check this was copied and pasted correctly.

When the launch agent runs, any errors it encounters will be logged to a `error.log` in this directory.

# Licence and Support
NO WARRANTY. THE SOFTWARE IS PROVIDED TO YOU "AS IS" AND "WITH ALL FAULTS."  
ANY USE OF THE SOFTWARE IS ENTIRELY AT YOUR OWN RISK.
