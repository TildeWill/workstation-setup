#!/usr/bin/env bash
brew install postgresql@9.6
brew services start postgresql@9.6

cp -f files/postgres.bash ~/.bash_it/custom/
source ~/.bash_it/custom/postgres.bash

until psql postgres -c 'SELECT 1'  > /dev/null 2>&1
do
  echo "Waiting for Postgres to start..."
  sleep 1
done

echo "Postgres started!"

set +e
    psql -d postgres -c "CREATE USER stitchfix_owner WITH PASSWORD 'stitchfix_owner';"
    psql -d postgres -c "ALTER USER stitchfix_owner createdb;"

    #  Eventually this user will need to access the test database and have superuser
    #  privileges, so go ahead and set that up:
    #  NOTE: Previously this user was called "stitchfix_production" and there may be
    #  some tools that rely upon this. If you encounter any, we should adjust them
    #  to use the new convention.
    psql -d postgres -c "ALTER USER stitchfix_owner with SUPERUSER;"

    #  NOTE: Previously this database was also called "stitchfix_production" and
    #  there may be some tools that still rely upon this. If you encounter any,
    #  we should adjust them to use the new convention.
    #  NOTE: Some apps may look for stitchfix_development. You can update an environment
    #  variable to point to the correct database in this case.
    psql -d postgres -c "CREATE DATABASE stitchfix_dev OWNER stitchfix_owner;"
    psql -d postgres -c "CREATE DATABASE stitchfix_test OWNER stitchfix_owner;"
set -e

brew cask install pgadmin4
