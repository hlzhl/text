                                                                                                         
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


