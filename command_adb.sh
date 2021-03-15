adb shell ls -tr /sdcard/youtube
adb pull /sdcard/youtube/"$1" .;mpv "$1"
