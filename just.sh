#!/bin/bash

number=$RANDOM
number=$[ $number % 14 + 1 ]

if [ $number -eq 1 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Brendan Fraser", "text": "JUST", "icon_emoji": ":just:"}' https://hooks.slack.com/services/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
elif [ $number -eq 2 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Brendan Fraser", "text": "ALIMONY", "icon_emoji": ":just:"}' https://hooks.slack.com/services/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
elif [ $number -eq 3 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "cute girl", "text": "Am I kawaii? uguu~", "icon_emoji": ":kawaii:"}' https://hooks.slack.com/services/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
elif [ $number -eq 4 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Dio Brando", "text": "Kono Dio Da!", "icon_emoji": ":konodioda:"}' https://hooks.slack.com/services/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
elif [ $number -eq 5 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Chie Satonaka", "text": "Don'\''t think, feel!", "icon_emoji": ":chie:"}' https://hooks.slack.com/services/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
elif [ $number -eq 6 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Chie Satonaka", "text": "Sheesh!", "icon_emoji": ":chie:"}' https://hooks.slack.com/services/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
elif [ $number -eq 7 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "El Capitan", "text": "OS X master race", "icon_emoji": ":osx:"}' https://hooks.slack.com/services/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
elif [ $number -eq 8 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Jonathon", "text": "*[slow laughter]* \n aaaaahhhh... classic", "icon_emoji": ":jon:"}' https://hooks.slack.com/services/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
elif [ $number -eq 9 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Jonathon", "text": "Shit in my asshole", "icon_emoji": ":jon:"}' https://hooks.slack.com/services/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
elif [ $number -eq 10 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Jonathon", "text": "Fuck me in my taint", "icon_emoji": ":jon:"}' https://hooks.slack.com/services/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
elif [ $number -eq 11]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Jonathon", "text": "Did you guys know that Mick is a reddit moderator?", "icon_emoji": ":jon:"}' https://hooks.slack.com/services/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
elif [ $number -eq 12]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Jonathon", "text": "Nobody cares", "icon_emoji": ":jon:"}' https://hooks.slack.com/services/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
elif [ $number -eq 13 ]; then
  curl -X POST --data-urlencode 'payload={"channel": "#general", "username": "Wojak", "text": "tfw no gf", "icon_emoji": ":tfw:"}' https://hooks.slack.com/services/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
fi
