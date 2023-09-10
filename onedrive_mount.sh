
export RCLONE_CONFIG_PASS=$1
wget -q https://raw.github.com/zhlhlf/text/main/rclone.conf > /dev/null
log=$(curl -s https://rclone.org/install.sh | sudo bash)
mkdir /home/runner/.config/rclone/ || echo "明"
mv rclone.conf /home/runner/.config/rclone/rclone.conf
umount zhlhlf || echo 
rm -rf zhlhlf || echo 
mkdir zhlhlf || echo 
rclone mount onedrive:/$2 ./zhlhlf --umask 000 --daemon
echo "\n"

IFS=\n
for i in $(ls 666)
do
sizel=$(du -sb "666/$i" | awk '{print $1}')
echo "$(( $sizel / 1024/1024)) m   $i" 
done

echo "\n"
rclone copy 666 zhlhlf/ 
ls zhlhlf
