
export RCLONE_CONFIG_PASS=$1
wget -q https://raw.githubusercontent.com/zhlhlf/text/main/rclone.conf > /dev/null
log=$(curl -s https://rclone.org/install.sh | sudo bash)
mkdir /home/runner/.config/rclone/ || echo "明"
mv rclone.conf /home/runner/.config/rclone/rclone.conf
mkdir zhlhlf || echo "明"
rclone mount onedrive:/$2 ./zhlhlf --umask 000 --daemon
echo "\n"
ls 666
echo "\n"
rclone copy 666 zhlhlf/ 
ls zhlhlf
