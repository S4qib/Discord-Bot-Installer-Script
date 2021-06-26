#!/bin/bash

set -e

echo "------------------------"
echo "|Discord bot installler!"
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
    cd Dorito-bot-discord.js
    npm install
    echo "---------------"
    echo "Succesfuly installed! Head over to directory \"Dortio-bot-discord.js/config.js\" to config the bot!"
    echo "---------------"
    echo "To start bot please do commands cd Dorito-bot-discord.js then node index.js after bot is configured!"
    echo "---------------"
}

RedBot() {
    git clone https://github.com/Cog-Creators/Red-DiscordBot.git
    cd Red-DiscordBot
    npm install
    echo "---------------"
    echo "Succesfuly installed! Head over to directory \"Red-DiscordBot/core/config.py\" to config the bot!"
    echo "---------------"
    echo "To start bot please do commands cd Red-DiscordBot then py launcher.py(Windows) or python3 launcher.py(Linux/MacOS) after bot is configured!"
    echo "---------------"
}
AtlantaBot() {
    git clone https://github.com/Androz2091/AtlantaBot.git
    cd AtlantaBot
    npm install
    mv config.sample.js config.js
    echo "---------------"
    echo "Succesfuly installed! Head over to directory \"AtlantaBot/config.js\" to config the bot!"
    echo "---------------"
    echo "To start bot please do commands cd AtlantaBot then node atlanta.js after bot is configured!"
    echo "---------------"    
}
EvoBot() {
    git clone https://github.com/eritislami/evobot.git
    cd evobot
    npm install
    mv config.json.example config.json
    echo "---------------"
    echo "Succesfuly installed! Head over to directory \"EvoBot/config.json\" to config the bot!"
    echo "---------------"
    echo "To start bot please do commands cd evobot then node index.js after bot is configured!"
    echo "---------------"
}
OwOBot()
  git clone https://github.com/ChristopherBThai/Discord-OwO-Bot.git
  cd Discord-OwO-Bot
  npm install
  echo "---------------"
  echo "Succesfuly installed! Head over to directory \"Discord-OwO-Bot/scr/data/config.json\" to config the bot!"
  echo "---------------"
  echo "To start bot please do commands cd Discord-OwO-Bot then node index.js after bot is configured!"
  echo "---------------"
}
  
  echo "[1] Install DoritoBot"
  echo "[2] Install RedBot"
  echo "[3] Install AtlantaBot"
  echo "[4] Install EvoBot"
  echo "[5] Install OwOBot"

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
      5)  
          OwOBot ;;
                * )
          error "Invalid option"
esac
