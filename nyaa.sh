uuid=$(uuidgen | cut -c 1-8)
anime=$(echo "https://nyaa.si/?page=rss&q=$1&c=0_0&f=0&u=HorribleSubs" | sed 's/ /+/g')
first_char=$(echo $1 | cut -c 1)
location="/Volumes/Curls/Anime [A]"

if [[ $first_char == [n-zN-Z]* ]]
then
	location="/Volumes/Curls/Anime [B]"
fi

if [ $# -eq 1 ]
then
	echo "\n  $uuid:\n    series:\n      - $1\n    template: anime\n    rss: $anime\n    transmission:\n      path: \"$location/$1\"" >> ~/.flexget/config.yml
else
	echo "needs one argument"
fi
