#!/bin/sh
volumePath=$1
resourcePath=$2
cp -R "$resourcePath/SIPManager.kext" "$volumePath/Library/Extensions/"
chown -R 0:0 "$volumePath/Library/Extensions/SIPManager.kext"
chmod -R 0755 "$volumePath/Library/Extensions/SIPManager.kext"

