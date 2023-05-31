if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ocmgrouptest/V6-OVER-POWER.git /V6OVERPOWER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /V6OVERPOWER
fi
cd /V6OVERPOWER
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
