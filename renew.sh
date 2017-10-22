#! /bin/bash

WOY=$(date +%W)

sudo rm /tmp/renew-$WOY
sudo > /tmp/renew-$WOY 2>&1 /usr/bin/certbot renew --post-hook "service apache2 reload"

# mail xx@yy.com < /tmp/renew-$WOY
