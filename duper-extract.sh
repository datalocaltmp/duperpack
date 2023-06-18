#!/bin/bash
ls /Users/runner/Library/Android/sdk/
ls /Users/runner/Library/Android/sdk/build-tools/29.0.0/
echo $PATH
export PATH=$PATH:/Users/runner/Library/Android/sdk/build-tools/29.0.0/
echo $PATH

# Install WhatsApp normally and extract Arm64 libraries
/Users/runner/Library/Android/sdk/platform-tools/adb root
/Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp.apk
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 30
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spk.zst/ . && zip -r libs.spk.zst.arm64.zip libs.spk.zst/
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp

# Replace libs.spk.zst with x86 libs.spk.zst 
apktool d -rs WhatsApp.apk
ls ./WhatsApp && mv WhatsApp/assets/compressed/x86/libs.spk.zst WhatsApp/assets/compressed/arm64-v8a/.
apktool b WhatsApp
java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && ls ./WhatsApp/dist/ && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
rm -rf ./WhatsApp
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && && sleep 30
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spk.zst/ . && zip -r libs.spk.zst.x86.zip libs.spk.zst/
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp

# Replace libs.spk.zst with x86_64 libs.spk.zst 
apktool d -rs WhatsApp.apk
ls ./WhatsApp && mv WhatsApp/assets/compressed/x86_64/libs.spk.zst WhatsApp/assets/compressed/arm64-v8a/.
apktool b WhatsApp
java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && ls ./WhatsApp/dist/ && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
rm -rf ./WhatsApp
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && && sleep 30
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spk.zst/ . && zip -r libs.spk.zst.x86_64.zip libs.spk.zst/
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp

# Replace libs.spk.zst with armeabi-v7a libs.spk.zst 
apktool d -rs WhatsApp.apk
ls ./WhatsApp && mv WhatsApp/assets/compressed/armeabi-v7a/libs.spk.zst WhatsApp/assets/compressed/arm64-v8a/.
apktool b WhatsApp
java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && ls ./WhatsApp/dist/ && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
rm -rf ./WhatsApp
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 30
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spk.zst/ . && zip -r libs.spk.zst.armeabi-v7a.zip libs.spk.zst/
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp
