

/Users/runner/Library/Android/sdk/platform-tools/adb devices
adb root
adb push ./frida-server-android /data/local/tmp
adb shell chmod 777 /data/local/tmp/frida-server-android
adb shell /data/local/tmp/frida-server-android &

