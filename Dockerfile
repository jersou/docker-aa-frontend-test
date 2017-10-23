FROM jersou/a-frontend



RUN npm install -g testcafe

RUN apt-get update && apt-get install -y nano byobu wget apt-transport-https lsof autossh firefox-esr xvfb

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && \
    apt-get update && apt-get install -y x11-apps libgtk2.0-0 google-chrome-stable

