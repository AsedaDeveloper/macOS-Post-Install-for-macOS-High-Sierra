#!/bin/sh
volumePath=$1
resourcePath=$2
rm -R "$volumePath/System/Library/Extensions/IO80211FamilyV2.kext"
cp -R "$resourcePath/IO80211Family.kext" "$volumePath/System/Library/Extensions/"
cp -R "$resourcePath/corecapture.kext" "$volumePath/System/Library/Extensions/"
cp -R "$resourcePath/CoreCaptureResponder.kext" "$volumePath/System/Library/Extensions/"
chmod -R 755 "$volumePath/System/Library/Extensions/IO80211Family.kext"
chown -R 0:0 "$volumePath/System/Library/Extensions/IO80211Family.kext"
chmod -R 755 "$volumePath/System/Library/Extensions/corecapture.kext"
chown -R 0:0 "$volumePath/System/Library/Extensions/corecapture.kext"
chmod -R 755 "$volumePath/System/Library/Extensions/CoreCaptureResponder.kext"
chown -R 0:0 "$volumePath/System/Library/Extensions/CoreCaptureResponder.kext"
