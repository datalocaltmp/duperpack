#!/bin/bash
export PATH=$PATH:/Users/runner/Library/Android/sdk/build-tools/29.0.0/
sleep 120

# Install WhatsApp normally and extract Arm64 libraries
/Users/runner/Library/Android/sdk/platform-tools/adb root

# Replace libs.spk.zst with arm64-v8a libs.spk.zst 
apktool d -rs WhatsApp.apk
cp WhatsApp/assets/compressed/arm64-v8a/libs.spk.zst WhatsApp/assets/compressed/armeabi-v7a/.
cp WhatsApp/assets/compressed/arm64-v8a/libs.spk.zst WhatsApp/assets/compressed/x86/.
cp WhatsApp/assets/compressed/arm64-v8a/libs.spk.zst WhatsApp/assets/compressed/x86_64/.
apktool b WhatsApp
java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
rm -rf ./WhatsApp
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 120
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spk.zst/ . && zip -r libs.spk.zst.arm64.zip libs.spk.zst/
rm -rf ./libs.spk.zst
/Users/runner/Library/Android/sdk/platform-tools/adb shell rm -rf /data/data/com.whatsapp
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp

# Replace libs.spk.zst with x86 libs.spk.zst 
apktool d -rs WhatsApp.apk
cp WhatsApp/assets/compressed/x86/libs.spk.zst WhatsApp/assets/compressed/arm64-v8a/.
cp WhatsApp/assets/compressed/x86/libs.spk.zst WhatsApp/assets/compressed/armeabi-v7a/.
cp WhatsApp/assets/compressed/x86/libs.spk.zst WhatsApp/assets/compressed/x86_64/.
apktool b WhatsApp
java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
rm -rf ./WhatsApp
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 120
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spk.zst/ . && zip -r libs.spk.zst.x86.zip libs.spk.zst/
rm -rf ./libs.spk.zst
/Users/runner/Library/Android/sdk/platform-tools/adb shell rm -rf /data/data/com.whatsapp
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp

# Replace libs.spk.zst with x86_64 libs.spk.zst 
apktool d -rs WhatsApp.apk
cp WhatsApp/assets/compressed/x86_64/libs.spk.zst WhatsApp/assets/compressed/arm64-v8a/.
cp WhatsApp/assets/compressed/x86_64/libs.spk.zst WhatsApp/assets/compressed/armeabi-v7a/.
cp WhatsApp/assets/compressed/x86_64/libs.spk.zst WhatsApp/assets/compressed/x86/.
apktool b WhatsApp
java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
rm -rf ./WhatsApp
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 120
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spk.zst/ . && zip -r libs.spk.zst.x86_64.zip libs.spk.zst/
rm -rf ./libs.spk.zst
/Users/runner/Library/Android/sdk/platform-tools/adb shell rm -rf /data/data/com.whatsapp
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp

# Replace libs.spk.zst with armeabi-v7a libs.spk.zst 
apktool d -rs WhatsApp.apk
cp WhatsApp/assets/compressed/armeabi-v7a/libs.spk.zst WhatsApp/assets/compressed/arm64-v8a/.
cp WhatsApp/assets/compressed/armeabi-v7a/libs.spk.zst WhatsApp/assets/compressed/x86/.
cp WhatsApp/assets/compressed/armeabi-v7a/libs.spk.zst WhatsApp/assets/compressed/x86_64/.
apktool b WhatsApp
java -jar ./uber-apk-signer-1.3.0.jar -a ./WhatsApp/dist/WhatsApp.apk && /Users/runner/Library/Android/sdk/platform-tools/adb install WhatsApp/dist/WhatsApp-aligned-debugSigned.apk
rm -rf ./WhatsApp
/Users/runner/Library/Android/sdk/platform-tools/adb shell am start -n com.whatsapp/.Main && sleep 120
/Users/runner/Library/Android/sdk/platform-tools/adb pull /data/data/com.whatsapp/files/decompressed/libs.spk.zst/ . && zip -r libs.spk.zst.armeabi-v7a.zip libs.spk.zst/
rm -rf ./libs.spk.zst
/Users/runner/Library/Android/sdk/platform-tools/adb shell rm -rf /data/data/com.whatsapp
/Users/runner/Library/Android/sdk/platform-tools/adb uninstall com.whatsapp
