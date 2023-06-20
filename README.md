```
a1="" ;
fw="" ;
name="";
flash_scripts="https://watery-quill-felidae.glitch.me/%E4%B8%80%E5%8A%A09r/ab_flash_scripts.7z";
image="boot.img dtbo.img odm.img product.img system.img system_ext.img vbmeta.img vbmeta_system.img vendor.img";
aria2c -x10 "$a1" -o ttt/${name}.zip ; unzip ttt/${name}.zip ; wget https://github.com/zhlhlf/text/raw/main/payload-dumper-go ; chmod 777 payload-dumper-go ; aria2c -x10 "${flash_scripts}" -o shelll.7z ; 7z x shelll.7z ; mv ab_flash_scripts ${name} ; mkdir ${name}/images ; log=$(./payload-dumper-go -o limages payload.bin) ; for i in $image ; do mv limages/$i ${name}/images/ ; done ; mv limages/my_* ${name}/images/ || echo "没有my_*\n"; rm -r limages ; rm -r payload.bin && rm -r ttt ; aria2c -x10 "$fw" -o zzzz.zip ; unzip zzzz.zip -d ${name} ; rm -r ${name}/META-INF ; 7z a ${name}.7z ${name} ; rm -r 666 || echo "666" ; mkdir 666 ; mv ${name}.7z 666 ; wget https://raw.github.com/zhlhlf/text/main/onedrive_mount.sh ; sh onedrive_mount.sh 0000 临时存放文件 ；

```

```
url="" ; 
name="" ; 
fs="https://watery-quill-felidae.glitch.me/%E4%B8%80%E5%8A%A09r/A_flash_scripts.7z";
aria2c -x10 "$fs" -o fs.7z ; 7z x fs.7z; mv A_flash_scripts $name ; 
aria2c -x10 "$url" -o works/rom.zip ; cd works ; git clone https://github.com/zhlhlf/D.N.A-2 -b x86_64 dddd ; chmod 777 dddd/local/bin/x86_64 -R ; export rr=$(pwd)/dddd/local/bin/x86_64/ ; export PATH=${rr}:${PATH} ; unzip rom.zip ; rm -r rom.zip ; for i in $(ls *.zip || echo "no") ; do unzip -n $i || echo "no" ; done ;
ls ; echo "\n" ; BR=$(ls *.br) ; for i in $BR ; do line=$(basename $i .new.dat.br) ; echo "> 正在分解：${line}.new.dat.br" ; brotli -d $i ; rm -r $i ; if [ -f ${line}.transfer.list ] ; then  a=${line}.transfer.list ; b=${line}.new.dat ; c="${line/.*/}.img" ; echo "$i   >   $a  $b   >   $c" ; log=$(sdat2img.py $a $b $c) ; rm -rf ${line}.transfer.list ; rm -rf ${line}.new.dat ; fi ; done ;  rm -r *.dat ; mkdir images ; rm -r my_preload.img || echo "没有my_preload.img" ; mv *.img images/ ; cp -r images ../$name/ ; mv firmware-update ../$name/ ; cd .. ; rm -r works ; ls $name/images ; 7z a ${name}.7z ${name} ; rm -r 666 || echo "666" ; mkdir 666 ; mv ${name}.7z 666 ; wget https://raw.github.com/zhlhlf/text/main/onedrive_mount.sh ; sh onedrive_mount.sh 0000 临时存放文件 ；
```
```
onedrive下载案列链接改法
https://drive.google.com/uc?id=1mvZxjJRPp-dweFv7sE7jTxIvvUEXReFQ&export=download&confirm=t&uuid=zhlhlf
https://drive.google.com/uc?id=1mvZxjJRPp-dweFv7sE7jTxIvvUEXReFQ&export=download
```
```
