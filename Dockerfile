from ubuntu:latest

run apt-get update -y
run apt-get install openjdk-8-jdk openjfx wget -y
run wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
run chmod a+x lein
run mv lein /usr/local/bin
run wget "https://sourceforge.net/projects/launch4j/files/launch4j-3/3.11/launch4j-3.11-linux-x64.tgz/download" -O launch4j.tgz
run tar -xvf launch4j.tgz
run mv launch4j /opt
run mkdir -p ~/.lein
run echo "{:user {:plugins [[com.nervestaple/lein-launch4j \"0.1.2\"]] :launch4j-install-dir \"/opt/launch4j\"}}" > ~/.lein/profiles.clj
run lein version
 
