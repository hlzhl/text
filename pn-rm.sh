zhlhlf(){
aa=$(cat $1)
for i in $aa
do
    if [ $i != $2 ]; then
        continue
    else
        echo "1"
        return "1"
    fi
done
        echo "0"
        return "0"
}




#sudo apt install aapt -y

for i in $(find ./ -name "*.apk")
do
    pa=$(aapt dump badging $i | awk -F" " '/package/ {print $2}' | awk -F "'" '/name=/{print $2}')
    aa=$(zhlhlf "$1" "$pa")
    
    if [ $aa = "1" ]; then
        echo "匹配到$pa"
        
        r1=$(basename $i)
        r1=${i%$r1*}
        
        if [ -d $r1/oat ]; then
            echo "删除中----$r1"        
            rm -rf $r1
        else
            echo "删除中----$i..."
            rm -rf $i
 
        fi
        
        echo "\n"
    fi
done