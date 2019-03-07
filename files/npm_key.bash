IFS="="
read -r garbage token < ~/.npmrc
export NPM_TOKEN=${token}
