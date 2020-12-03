#!/bin/bash

set -e

echo "------------------------"
echo "|Discord bot installler!"
echo "|Copyright (C) Feroxus Inc, all rights reserved."
echo "|Made with <3 by Saqib, licensed under MIT"
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
    echo "---------------"
    echo "Succesfuly installed! Head over to directory Dortio-bot-discord.js to config the bot!"
    echo "---------------"
    echo "To start bot please do commands cd Dorito-bot-discord.js then node index.js after bot is configured!"
    echo "---------------"
}

RedBot() {
    git clone https://github.com/Cog-Creators/Red-DiscordBot.git
    echo "---------------"
    echo "Succesfuly installed! Head over to directory Red-DiscordBot to config the bot!"
    echo "---------------"
    echo "To start bot please do commands cd Red-DiscordBot then py launcher.py(Windows) or python3 launcher.py(Linux/MacOS) after bot is configured!"
    echo "---------------"
}
AtlantaBot() {
    git clone https://github.com/Androz2091/AtlantaBot.git
    echo "---------------"
    echo "Succesfuly installed! Head over to directory AtlantaBot to config the bot!"
    echo "---------------"
    echo "To start bot please do commands cd AtlantaBot then node atlanta.js after bot is configured!"
    echo "---------------"    
}
EvoBot() {
    git clone https://github.com/eritislami/evobot.git
    echo "---------------"
    echo "Succesfuly installed! Head over to directory EvoBot to config the bot!"
    echo "---------------"
    echo "To start bot please do commands cd evobot then node index.js after bot is configured!"
    echo "---------------"
}
  echo "[1] Install DoritoBot"
  echo "[2] Install RedBot"
  echo "[3] Install AtlantaBot"
  echo "[4] Install EvoBot"

  read -r action

  case $action in
      1 )
          DoritoBot ;;
      2 )
          RedBot ;;
      3) 
          AtlantaBot ;;
      4)
          EvoBot ;;
                * )
          error "Invalid option"
esac
