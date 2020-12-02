#!/bin/bash

set -e

echo "------------------------"
echo "|Discord bot installler!"
echo "|Copyright (C) Feroxus Inc, all rights reserved."
echo "|Made with <3 by Saqib, licensed under Apache 2.0 License"
echo "------------------------"

echo ""

echo "Select 1-2"

if ! [ -x "$(command -v curl)" ]; then
  echo "* curl is required in order for this script to work."
  echo "* install using apt (Debian and derivatives) or yum/dnf (CentOS)"
  exit 1
fi

DoritoBot() {
    git clone https://github.com/Aaronidk/Dorito-bot-discord.js.git
    echo "Succesfuly installed! Head over to directory Dortio-bot-discord.js to config the bot!"
}

RedBot() {
    git clone https://github.com/Cog-Creators/Red-DiscordBot.git
    echo "Succesfuly installed! Head over to directory Red-DiscordBot to config the bot!"
}

  echo "[1] Install DoritoBot"
  echo "[2] Install RedBot"

  read -r action

  case $action in
      1 )
          DoritoBot ;;
      2 )
          RedBot ;;
                * )
          error "Invalid option"
esac
