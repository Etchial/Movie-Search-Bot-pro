if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Etchial/Movie-Search-Bot-pro.git /Movie-Search-Bot-pro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-Search-Bot-pro
fi
cd /Movie-Search-Bot-pro
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
