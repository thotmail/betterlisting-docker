#!/bin/bash

SRCPRE="Faenza/"
TRGTPRE="betterlisting/icons/"

rm -rf betterlisting Faenza tmp icon.zip BetterListing

echo Fetching and setting up betterlisting
git clone --quiet https://gitlab.com/devCoster/BetterListing.git
mv BetterListing/betterlisting ./
sed -i 's/\/betterlisting\//\/.betterlisting\//g' betterlisting/top.html
sed -i 's/www.devcoster.com\/betterlisting/github.thotmail.ca\/betterlisting-docker/g' betterlisting/bot.html
mkdir $TRGTPRE

echo Fetching icons
curl https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/faenza-icon-theme/faenza-icon-theme_1.3.zip\
  -o icon.zip -s
mkdir tmp
unzip -q icon.zip -d tmp
tar -xf tmp/Faenza.tar.gz

echo Setting up icons
while IFS="" read -r p || [ -n "$p" ]
do
  if [ "$p" ]
  then
    tmp=$(sed 's/:/\n/g' <<< $p)
    src=$SRCPRE$(head -n 1 <<< $tmp).png
    trgt=$TRGTPRE$(tail -n 1 <<< $tmp).png
    cp $src $trgt
  fi
done < cpmap.txt

echo Cleaning
rm -rf Faenza tmp icon.zip BetterListing
