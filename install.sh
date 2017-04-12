#get current dir
CURR_DIR=$(pwd)

BLUE='\033[1;34m'
GREY='\033[0;37m'
NC='\033[0m' # No Color

echo "${BLUE}This will set up momentum_sync for you.${NC}"
echo "First you need to get your momentum client ID \n"
echo "Press enter to open chrome / momentum and then come back here..."

read $done;
open /Applications/Google\ Chrome.app/ -nF;

echo "1. In Chrome / Momentum click on the settings cog bottom left"
echo "2. Click on About"
echo "3. Double click on the version number under the momentum logo"
echo "4. Copy the ID that is then shown"
echo "5. Paste it below..."

read client_id

echo "client_id='$client_id'" > config.py

echo "\n\nGreat, now you can manually run with the command 'python ./sync_momentum.py' \n"
echo "${BLUE}Would you like to automatically run sync_momentum once a day?${NC}"
echo "${GREY}you can remove this with ./uninstall.sh later${NC}"
echo "y/n ?"

read auto

if [ "$auto" == "y" ]; then

  #add the path to the launch agent template
  sed "s|{CURR_DIR}|$CURR_DIR|g" download_agent/me.mattbryson.momentum_download.agent.plist.tpl > download_agent/me.mattbryson.momentum_download.agent.plist
  #check launch agent folder exists..
  mkdir -p ~/Library/LaunchAgents
  #copy and install the launch agent
  cp download_agent/me.mattbryson.momentum_download.agent.plist ~/Library/LaunchAgents/ && launchctl load  ~/Library/LaunchAgents/me.mattbryson.momentum_download.agent.plist
fi

echo "\n\n${BLUE}Awesome, Would you like to set all your desktops to ranomly show these images ?${NC}"
echo "${GREY}You can chnage this in System Preferences > Desktop and Screensaver${NC}"
echo "y/n?"

read update

if [ "$update" == "y" ]; then
  osascript -e 'tell application "System Events" to set picture of every desktop to ("$CURR_DIR/pictures")'
fi

echo "\nYour all done";
echo "${GREY}To uninstall you can run ./uninstall.sh${NC}";
