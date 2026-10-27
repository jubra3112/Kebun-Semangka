#!/usr/bin/env bash
# Membuat proyek Android dan menghasilkan APK debug. Butuh Node 18+, JDK 17, Android SDK.
set -e
npm install
[ -d android ] || npx cap add android
MF=android/app/src/main/AndroidManifest.xml
grep -q POST_NOTIFICATIONS "$MF" || sed -i 's#</manifest>#    <uses-permission android:name="android.permission.POST_NOTIFICATIONS" />\n    <uses-permission android:name="android.permission.SCHEDULE_EXACT_ALARM" />\n</manifest>#' "$MF"
npx cap sync android
(cd android && ./gradlew assembleDebug)
echo "APK: android/app/build/outputs/apk/debug/app-debug.apk"
