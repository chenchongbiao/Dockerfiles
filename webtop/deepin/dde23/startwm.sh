#!/bin/bash

# Enable Nvidia GPU support if detected
if which nvidia-smi; then
  export LIBGL_KOPPER_DRI2=1
  export MESA_LOADER_DRIVER_OVERRIDE=zink
  export GALLIUM_DRIVER=zink
fi

# Disable compositing and screen lock
# if [ ! -f $HOME/.config/kwinrc ]; then
#   kwriteconfig5 --file $HOME/.config/kwinrc --group Compositing --key Enabled false
# fi
# if [ ! -f $HOME/.config/kscreenlockerrc ]; then
#   kwriteconfig5 --file $HOME/.config/kscreenlockerrc --group Daemon --key Autolock false
# fi
setterm blank 0
setterm powerdown 0

# Launch DE
# /usr/bin/deepin-kwin
/usr/bin/dde-session & > /dev/null 2>&1
/usr/bin/startdde & > /dev/null 2>&1
/usr/bin/deepin-kwin_x11 --replace & > /dev/null 2>&1
/usr/bin/dde-appearance & > /dev/null 2>&1
/usr/lib/deepin-daemon/dde-session-daemon & > /dev/null 2>&1
/usr/bin/dde-file-manager-daemon & > /dev/null 2>&1/
/usr/bin/dde-desktop & > /dev/null 2>&1
/usr/bin/dde-widgets & > /dev/null 2>&1
/usr/bin/dde-clipboard & > /dev/null 2>&1
/usr/bin/dde-application-manager & > /dev/null 2>&1
/usr/bin/dde-launchpad & > /dev/null 2>&1
/usr/bin/dde-dconfig-daemon & > /dev/null 2>&1
/usr/bin/dde-wloutput-daemon & > /dev/null 2>&1
/usr/bin/dde-shell > /dev/null 2>&1