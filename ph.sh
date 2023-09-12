
if [ ! "$1" ];then
    echo "       sh ph.sh http://xxx http://xxx "
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


list=$(find 666/*)
i=1
while true
do
tt=$(sed -n ${i}p <<end
$list
end
)
i=$(($i+1))
if [ ! "$tt" ];then
    break
fi

sizel=$(du -sb "$tt" | awk '{print $1}')
echo "$(( $sizel / 1024/1024)) m   $(basename "$tt")"
done

