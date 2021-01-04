# The Co-authored By trailer gets added on by a prepare-commit-msg hook
# vs. the Signed-off-by trailer which gets added via duet-commit etc.
# You probably don't want both

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

# avoid duplicate Co-authored-by trailers when editing commits
git config --global trailer.ifexists addIfDifferent
