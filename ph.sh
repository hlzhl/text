rm -rf ph.py

cat >ph.py <<end 
import youtube_dl
import sys

def download(link):
    dir = 'phv/%(title)s.%(ext)s'
    ydl_opts = {
        'format': 'best',
        'outtmpl': dir
    }
    with youtube_dl.YoutubeDL(ydl_opts) as ydl:
        ydl.download([link])

if __name__ == "__main__":
    for i in sys.argv[1:]:
        download(i)
end

if [ "a$1" = "a" ];then
    echo "
    sh ph.sh http://xxx http://xxx "
    exit
fi

pip install youtube_dl
    
for i in $@
do
python ph.py $i
done

ls phv
