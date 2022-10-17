if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AM-ROBOTS/EvaMaria1.git /EvaMaria1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria1
fi
cd /EvaMaria1
pip3 install -U -r requirements.txt
echo "Starting Bot url...."
python3 bot.py
