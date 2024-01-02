de(){
 
 oo=$(find */*app*/ -name $1)
 if [ ! $oo ];then
   oo=$(find */*/*app*/ -name $1)
 fi
 if [ $oo ];then
  echo $oo
  echo $oo >> ../../del_app-by-zhlhlf.txt
  rm -rf $oo
 fi

}

keep-del-app(){
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

keep-del-app "Clock"   #删除所有*/*del-app*/*  apps为要保留的



rm -rf */Omoji
de ONet #增强服务里面的
de COSA #应用增强服务 游戏模式相关
de Omoji
de GameSpace #游戏空间
de Music #音乐
de Browser #浏览器
de EasterEgg  #安卓彩蛋
de KeKeAppDetail  #应用安装器  应用安装安全扫描
de HTMLViewer 
#de OppoExServiceUI #手势体感服务  双击亮屏  
#de OppoGestureUI #手势体感 双击亮屏
de GmsCore #谷歌服务
de HotwordEnrollmentOKGoogle
de HotwordEnrollmentXGoogle
de arcore
de GooglePlayServicesUpdater 
de DiracAudioControlService
de com.qualcomm.location
de DownloadProvider #下载管理服务
de PrintSpooler #打印处理服务
de Stk #sim工具包
de GoogleServicesFramework #谷歌服务框架
#de NfcNci #nfc功能 
de ChildrenSpace #儿童空间
de AssistantScreen #速览
de DigitalWellBeing #应用使用时间
de ColorDirectUI #小布识屏
de FileEncryption #
de BaiduInput_S_Product #百度输入法
de FloatAssistant #悬浮球 
#de PhoneManager #手机管家
#de OcrScanner #小布扫一扫
#de OppoTranslationService #翻译服务
de BrowserVideo #视频
de MDSService 
de HeySynergy #
de HeyCast 
de Olc
de MyDevices #我的设备
de SystemClone #系统分身
de SOSHelper #紧急联络
#de SmartDrive #驾驶模式
de SceneService #数据服务平台
de SceneMode #简易模式
de RemoteGuardService #远程守护
de OPSynergy
de OppoDCS
de OppoAccessoryFramework
de AccessoryFramework #设备快连
de MyDevices #我的设备
de HeyTapSpeechAssist #小布助手
de BaiduInput_S_Product #百度输入法
de ColorAccessibilityAssistant #语音转文字
de OVoiceManagerServiceOnePlus #语音唤醒 
de GoogleOneTimeInitializer #谷歌时间进程
de KeKeMarket #软件商店
de SystemHelper 
de Traceur
de BuiltInPrintService
#de OppoMultiApp 
#de OplusMultiApp #应用分身
de OTA #软件更新
#de SafeCenter #安全中心
de SystemAppUpdateService
de GlobalSearch #全局搜索
de Instant #快应用
#de KeKePay #安全支付
#de SecurePay #安全支付
#de FinShellWallet #钱包
de talkback #安卓无障碍套件
de SecurityGuard #安全事件
de OppoOperationManual
de OplusOperationManual #使用说明
#de MCS #系统消息
de OppoWifiSecureDetect
de WifiSecureDetect #wifi安全检测
de FindMyPhone #查找手机 
de FindMyPhoneClient2 #查找手机连接
de CloudService #云服务 
de ShareScreen #屏幕共享
de OShare #已加互传
de Calendar #日历
de CalendarProvider #日历储存
de OppoDCS 
#de Aod #息屏 
de Karaoke #耳机返听
#de SmartSideBar #智能边框 
de Portrait #人像绘影
de Pictorial #乐划锁屏
de RomUpdate #更新服务
de DCS #用户体验计划
de dmp #融合搜索服务
#de OCar #车联
de CodeBook #密码本
de OppoWeatherService #天气服务
de Olc
de UpgradeGuide #升级指南
#de KeKeUserCenter #设置中用户中心 
de OplusEngineerCamera #一加工程相机
de ADS #商业服务
de IFlySpeechService #讯飞语音引擎
de LogKit #反馈工具箱
de BackupAndRestore #c11的手机搬家
de iFlyIME #讯飞输入法
de SogouInput_S_Product #搜狗输入法定制版
#de OplusEyeProtect  #护眼模式


