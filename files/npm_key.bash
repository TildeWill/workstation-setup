OLDIFS="$IFS"
IFS="="
read -r garbage npm_token < ~/.npmrc
export NPM_TOKEN=${npm_token}
IFS="$OLDIFS"
