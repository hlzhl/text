```
echo "AB------------------------";
url="" ;
fw="" ;
name="";
name="$name-$(date +%Y-%m-%d)";
flash_scripts="https://watery-quill-felidae.glitch.me/%E4%B8%80%E5%8A%A09r/ab_flash_scripts.7z";
image="boot.img dtbo.img odm.img product.img system.img system_ext.img vbmeta.img vbmeta_system.img vendor.img";
aria2c -x10 "$url" -o ttt/rom.zip ; unzip ttt/rom.zip ; wget https://github.com/zhlhlf/text/raw/main/payload-dumper-go ; chmod 777 payload-dumper-go ; aria2c -x10 "${flash_scripts}" -o shelll.7z ; 7z x shelll.7z ; rm -rf shelll.7z ; mv ab_flash_scripts ${name} ; mkdir ${name}/images ; log=$(./payload-dumper-go -o limages payload.bin) ; rm -rf ttt ; rm -rf payload.bin ; for i in $image ; do mv limages/$i ${name}/images/ ; done ; mv limages/my_* ${name}/images/ || echo "没有my_*\n"; rm -rf limages ; aria2c -x10 "$fw" -o zzzz.zip ; unzip zzzz.zip -d ${name} ; rm -rf zzzz.zip ; rm -r ${name}/META-INF ;

7z a ${name}.7z ${name} ; rm -rf 666 ; mkdir 666 ; mv ${name}.7z 666 ; wget https://raw.github.com/zhlhlf/text/main/onedrive_mount.sh ; sh onedrive_mount.sh 0000 临时存放文件 ;

```
```
echo "阉割脚本-------------------" ; repacktools="";    rms="";    cd $name/images ; mkdir work ; cd work ; mkdir project ; mv ../my* ./project ; yy="my* system.img system_ext.img boot.img " ; for i in $yy ; do mv ../$i ./project || echo "没有$i" ; done ; aria2c -x10 "$repacktools" -o repacktools.zip  ; unzip repacktools.zip ; mv img_tools/* ./ ; rm -rf repacktools.zip ; rm -rf img_tools ; chmod 777 * ; sudo bash unpack_img.sh ;  cd project ; curl -sL "$rms" | sudo bash ; ls */*app* ; rm -rf *.img ; cd ../ ; sudo bash repack_img.sh ; sudo mv project/out/* ../ ; cd ../ ; sudo rm -rf work ; cd ../../ ;
```
```
echo "A only------------------------";
url="" ; 
name="" ; 
name="$name-$(date +%Y-%m-%d)";
fs="https://watery-quill-felidae.glitch.me/%E4%B8%80%E5%8A%A09r/A_flash_scripts.7z";
aria2c -x10 "$fs" -o fs.7z ; 7z x fs.7z; mv A_flash_scripts $name ; rm -rf fs.7z ; 
aria2c -x10 "$url" -o works/rom.zip ; cd works ; git clone https://github.com/zhlhlf/D.N.A-2 -b x86_64 dddd ; chmod 777 dddd/local/bin/x86_64 -R ; export rr=$(pwd)/dddd/local/bin/x86_64/ ; export PATH=${rr}:${PATH} ; unzip rom.zip ; rm -rf rom.zip ; for i in $(ls *.zip || echo "no") ; do unzip -n $i || echo "no" ; done ;
ls ; echo "\n" ; BR=$(ls *.br) ; for i in $BR ; do line=$(basename $i .new.dat.br) ; echo "> 正在分解：${line}.new.dat.br" ; brotli -d $i ; rm -r $i ; if [ -f ${line}.transfer.list ] ; then  a=${line}.transfer.list ; b=${line}.new.dat ; c="${line/.*/}.img" ; echo "$i   >   $a  $b   >   $c" ; log=$(sdat2img.py $a $b $c) ; rm -rf ${line}.transfer.list ; rm -rf ${line}.new.dat ; fi ; done ;  rm -r *.dat ; mkdir images ; rm -r my_preload.img || echo "没有my_preload.img" ; mv *.img images/ ; cp -r images ../$name/ ; mv firmware-update ../$name/ ; cd .. ; rm -r works ; ls $name/images ; 

 7z a ${name}.7z ${name} ; rm -r 666 || echo "666" ; mkdir 666 ; mv ${name}.7z 666 ; wget https://raw.github.com/zhlhlf/text/main/onedrive_mount.sh ; sh onedrive_mount.sh 0000 临时存放文件 ；
```
```
onedrive下载案列链接改法
https://drive.google.com/uc?id=1mvZxjJRPp-dweFv7sE7jTxIvvUEXReFQ&export=download&confirm=t&uuid=zhlhlf
https://drive.google.com/uc?id=1mvZxjJRPp-dweFv7sE7jTxIvvUEXReFQ&export=download
