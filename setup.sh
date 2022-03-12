#!/bin/sh

set -e

if [ ! -f /usr/local/bin/brew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if ! command -v docker &> /dev/null
then
    echo "<docker> could not be found"
    brew install docker
fi

if ! command -v docker-compose &> /dev/null
then
    echo "<docker-compose> could not be found"
    brew install docker-compose
fi

echo "health check ok\n"

make help
