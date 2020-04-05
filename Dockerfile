FROM gitpod/workspace-full-vnc


USER root

# Install dependencies
RUN apt-get update && wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - && wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add - && echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list && cd ~/ && wget https://download.virtualbox.org/virtualbox/6.1.2/Oracle_VM_VirtualBox_Extension_Pack-6.1.2.vbox-extpack                                       \
    && apt-get install -y libgtk-3-dev chromium-browser xfce4 xfce4-goodies wget linux-headers-$(uname -r) dkms virtualbox-6.1           \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/* 

USER gitpod


#RUN npm install -g cordova ionic qrcode @ionic/lab cordova-res native-run @capacitor/core @capacitor/cli electron  electron-packager  

    



USER root
