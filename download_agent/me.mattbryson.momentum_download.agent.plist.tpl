<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>me.mattbryson.momentum_download</string>
	<key>EnvironmentVariables</key>
	<dict>
		<key>PATH</key>
		<string>/bin:/usr/bin:/usr/local/bin</string>
	</dict>
	<key>ProgramArguments</key>
		<array>
		  <string>/bin/sh</string>
		  <string>-c</string>
		  <string>exec python {CURR_DIR}/sync_momentum.py</string>
		</array>
	<key>RunAtLoad</key>
	<true/>
	<key>StartInterval</key>
	<integer>86400</integer>
	<key>StandardErrorPath</key>
	<string>{CURR_DIR}/error.log</string>
	<key>StandardOutPath</key>
	<string>/dev/null</string>
</dict>
</plist>
