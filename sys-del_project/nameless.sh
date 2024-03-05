
de(){
 
 oo=$(find */*app*/ -name $1)
 if [ ! $oo ];then
   oo=$(find */*/*app*/ -name $1)
 fi
 if [ $oo ];then
  echo "删除--- $oo \"$2\"" >> ../../../del_app-by-zhlhlf.txt
  echo "删除--- $oo \"$2\""
  rm -rf $oo
 fi

}

keep-del-app(){
	echo "------keep-del-app------"
	rm -rf keep-app.txt
	rm -rf keep-app
    mkdir keep-app_zhlhlf
	touch keep-app.txt
for i in $1
	do
	p=$(find */*del-app*/ -name "$i")
	echo $p >> keep-app.txt
	if [ $p ];then
	    echo "exist $p"
		mv $p ./keep-app_zhlhlf
	fi
done
	rm -rf */*del-app*/*
	k="1"
for i in $1
do
	if [ -d ./keep-app_zhlhlf/$i ];then
	    echo "move $i complete"
		mv ./keep-app_zhlhlf/$i $(sed -n ${k}p keep-app.txt)
	fi
	k=$((k+1))
done
	rm -rf keep-app.txt
	rm -rf keep-app_zhlhlf
	echo -e "\n"
	echo "------keep-del-app------"
}

del_key(){
   for i in "vendor/etc/fstab.qcom" "boot/ramdisk/fstab.qcom" "boot/ramdisk/oplus.fstab" "boot/ramdisk/system/etc/fstab.qcom" 
   do
    sed -i s#avb.*system,#""#g "$i"
    sed -i s#avb.*vendor,#""#g "$i"
    sed -i s#,fileencryption.*metadata_encryption#""#g "$i"
    sed -i s#,avb_keys.*pubkey#""#g "$i"
   done
}

del_key #去除data加密 avb验证等

echo "ro.setupwizard.mode=DISABLED" >> system/system/build.prop #跳过谷歌向导
#rm -rf $(find ./ -name "SetupWizard") #删除后下拉 全面屏返回等出问题

de CalculatorGooglePrebuilt
de CalendarGooglePrebuilt
de Chrome
de Chrome-Stub
de DevicePolicyPrebuilt
de GoogleTTS
de LatinIMEGooglePrebuilt
de LocationHistoryPrebuilt
de MarkupGoogle
de Music
de NgaResources
de PixelThemesStub2022_and_newer
de PixelWallpapers2022
de PlayAutoInstallConfig
de SoundPickerPrebuilt
de WallpaperEmojiPrebuilt
de arcore
de talkback
de AndroidAutoStubPrebuilt
de BetterBugStub
de ConfigUpdater
de DMService
de DevicePersonalizationPrebuiltPixel2020
de FilesPrebuilt
de GoogleOneTimeInitializer
de GoogleRestorePrebuilt
de HotwordEnrollmentOKGoogle
de HotwordEnrollmentXGoogle
de PartnerSetupPrebuilt
de Phonesky
de PixelLiveWallpaperPrebuilt
de RecorderPrebuilt
de SafetyHubPrebuilt
de ScribePrebuilt
de SecurityHubPrebuilt
de TurboPrebuilt
de Velvet
de WellbeingPrebuilt
de GoogleServicesFramework
