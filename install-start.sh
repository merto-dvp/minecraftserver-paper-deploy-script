sudo apt update
sudo apt install wget screen default-jdk fastjar -y
sudo useradd -m -r -d /opt/minecraft minecraft
sudo mkdir /opt/minecraft/survival

sudo wget -nc survival.zip <insert your paper server data here (as zip)>
sudo jar xvf survival.zip

sudo mv survival/* /opt/minecraft/survival/
sudo mv server.properties /opt/minecraft/survival/ 
sudo rm -rf survival
sudo cp minecraft@.service /etc/systemd/system/minecraft@.service

sudo chown -R minecraft /opt/minecraft/survival/
sudo systemctl start minecraft@survival
sudo systemctl enable minecraft@survival
sudo systemctl status minecraft@survival