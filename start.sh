if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ocmgrouptest/Koya.git /Koya
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Koya
fi
cd /Koya
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
