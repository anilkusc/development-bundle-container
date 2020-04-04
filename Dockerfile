FROM ubuntu:18.04

RUN apt update && apt-get install software-properties-common apt-transport-https curl wget gconf-service libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxss1 libxtst6 libappindicator1 libnss3 libasound2 libatk1.0-0 libc6 ca-certificates fonts-liberation lsb-release xdg-utils wget -y

RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add - && add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

RUN add-apt-repository ppa:system76/pop

RUN wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt update && apt-get install dotnet-sdk-3.1 code pop-theme firefox nodejs -y

CMD code /mnt/ --user-data-dir="/.vscode-root" && sleep infinity
