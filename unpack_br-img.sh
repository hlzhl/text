url="https://yun.daxiaamu.com/OnePlus_Roms_2/%E4%B8%80%E5%8A%A09R/ColorOS%2011.2%20A.08/LE2100domestic_11_A.08_2021052601230251.zip"
aria2c -j10 "$url" -o works/rom.zip
cd works

git clone https://github.com/zhlhlf/D.N.A-2 -b x86_64 dddd
chmod 777 dddd/local/bin/x86_64 -R
rr=$(ls dddd/local/bin/x86_64)
export rr=$(pwd)/dddd/local/bin/x86_64/
export PATH=${rr}:${PATH}

BR=$(ls *.zip)
for i in $BR ;do
    unzip $i
    rm -r $i
done

BR=$(ls *.zip)
for i in $BR ;do
    unzip $i
    rm -r $i
done

rm -r *.dat

ls

echo -e "\n"
BR=$(ls *.br)
for i in $BR ;do
line=$(basename $i .new.dat.br)
echo "> 正在分解：${line}.new.dat.br"
brotli -d $i
rm -r $i
if [ -f ${line}.transfer.list ];then
  a=${line}.transfer.list ;
  b=${line}.new.dat ;
  c="${line/.*/}.img" ;
  echo "$i   >   $a  $b   >   $c"
  log=$(sdat2img.py $a $b $c)
  rm -rf ${line}.transfer.list  
  rm -rf ${line}.new.dat
fi
done
rm -r META-INF
rm -r *.dat
ls
