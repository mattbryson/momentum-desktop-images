#get current dir
CURR_DIR=$(pwd)
#add the path to the launch agent template
sed "s|{CURR_DIR}|$CURR_DIR|g" download_agent/me.mattbryson.momentum_download.agent.plist.tpl > download_agent/me.mattbryson.momentum_download.agent.plist
#copy and install the launch agent
chmod +x sync_momentum.py && cp download_agent/me.mattbryson.momentum_download.agent.plist ~/Library/LaunchAgents/ && launchctl load  ~/Library/LaunchAgents/me.mattbryson.momentum_download.agent.plist
