# Adding docker to sudo
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
