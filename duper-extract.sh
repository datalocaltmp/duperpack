

wget https://github.com/frida/frida/releases/download/16.0.19/frida-server-16.0.19-android-x86_64.xz
unxz ./frida-server-16.0.19-android-x86_64.xz

adb root

adb push ./frida-server-16.0.19-android-x86_64 /data/local/tmp
adb shell chmod 777 /data/local/tmp/frida-server-16.0.19-android-x86_64
adb shell /data/local/tmp/frida-server-16.0.19-android-x86_64 &
frida-ps -U

