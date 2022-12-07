cd /root
git init
git clone https://github.com/cloudyuga/rsvpapp
if [ $? -eq 0 ];
then
 echo "Git intialization is successful and repository made"
else
 echo "Git intialization failed and cloning unsuccessful"
fi
cd rsvpapp/static
convert cloudyuga.png cloudyuga.jpeg
if [ $? -eq 0 ];
then 
 files=`ls -l /root/rsvpapp/static`
 echo "files=$files"
 echo "file type changed from .png to .jpeg"
 
else 
 apt-get install imagemagick -y
 apt-get update 
 convert cloudyuga.png cloudyuga.jpeg
 static_files=`ls -l /root/rsvpapp/static`
 echo "static_files=$static_files"
fi
git add cloudyuga.jpeg
if [ $? -eq 0 ];
then
 status=`git status`
fi
