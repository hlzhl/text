                                                                                                         
if [ "a$1" = "a" ];then
    echo "
    sh ph.sh http://xxx http://xxx "
    exit
fi

if [ ! -d 666 ];then
    mkdir 666
fi

cd 666
pip install youtube-dl


for i in $@
do
    youtube-dl -o '%(title)s.%(ext)s' -f best $i 
done
cd ../

IFS=\r\n
for i in $(ls 666)
do
echo $i
sizel=$(du -sb "666/$i" | awk '{print $1}') || echo ""
echo "$(( $sizel / 1024/1024)) m   $i"  || echo ""
done
