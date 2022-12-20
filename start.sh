if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Etchial/Movie-search-BOT.git /Movie-search-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-search-BOT
fi
cd /Movie-search-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
