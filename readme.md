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
Once you have followed the installation instructions you can manually download the images with this command.

    $ python ./sync_momentum.py

# Errors
Run the python script directly to see any potential errors.

When the launch agent runs, any errors it encounters will be logged to a `error.log` in this directory.

## Connection reset by peer 
usually means you have not entered a client ID.

## 400 Bad Request 
usually means your `CLIENT_ID` is wrong / not recognised.

Double check this was copied and pasted correctly.

## urllib2.URLError: SSL: TLSV1_ALERT_PROTOCOL_VERSION
`urllib2.URLError: <urlopen error [SSL: TLSV1_ALERT_PROTOCOL_VERSION] tlsv1 alert protocol version (_ssl.c:590)>`
This is usually because your version of python (default shipped on OSX) is too old and doesnt have the latest versions of OpenSSL.

To upgrade python 2 to the latest version on OSX you can use brew.  see https://docs.python-guide.org/starting/install/osx/

# Licence and Support
NO WARRANTY. THE SOFTWARE IS PROVIDED TO YOU "AS IS" AND "WITH ALL FAULTS."  
ANY USE OF THE SOFTWARE IS ENTIRELY AT YOUR OWN RISK.
