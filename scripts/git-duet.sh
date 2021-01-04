brew install git-duet/tap/git-duet

cat <<-EOF > ~/.bash_it/custom/git-duet.bash
export GIT_DUET_CO_AUTHORED_BY=true
export GIT_DUET_GLOBAL=true
export GIT_DUET_SECONDS_AGO_STALE=12000
EOF

cat <<-EOF > ~/.git-authors
authors:
  will: Will Read; will.read@gmail.com
  sam: Sam Waggoner; samuel.waggoner@gmail.com
email_template: '{{.Username}}'
EOF

# avoid duplicate Co-authored-by trailers
git config --global trailer.ifexists addIfDifferent

# install a wrapper for use in JetBrains IDEs
curl -Ls -o /usr/local/bin/jetbrains-git-wrapper https://raw.github.com/git-duet/git-duet/master/scripts/jetbrains-git-wrapper
chmod +x /usr/local/bin/jetbrains-git-wrapper