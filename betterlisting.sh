#!/bin/sh

if [ "$GOOGLEANCODE" ];then
  cp back/top.html betterlisting/top.html
  sed -i "s|var googleGACode[^;]*;|var googleGACode = '$GOOGLEANCODE';|g" betterlisting/top.html
else
  sed -i -e '1h;2,$H;$!d;g' -e 's|<script>[^/]*// Remove if not using GA.[^>]*>||g' betterlisting/top.html
  sed -i 's|var googleGACode[^;]*;||g' betterlisting/top.html
fi

sed -i "s|var websiteName[^;]*;|var websiteName = '$WEB_NAME';|g" betterlisting/top.html


sed -i "s|var websiteURL[^;]*;|var websiteURL = '$WEB_URL';|g" betterlisting/top.html
