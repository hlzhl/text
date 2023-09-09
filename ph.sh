
if [ "a$1" = "a" ];then
    echo "
    sh ph.sh http://xxx http://xxx "
    exit
fi
rm -rf 666
mkdir 666
cd 666
pip install youtube-dl
    
for i in $@
do
youtube-dl -o '%(title)s.%(ext)s' -f best --external-downloader aria2c --external-downloader-args '-x 10' $i &
done
wait

cd ../
for i in $(ls 666)
do
sizel=$(du -sb "666/$i" | awk '{print $1}')
echo "$(( $sizel / 1024/1024)) m   $i" 
done
