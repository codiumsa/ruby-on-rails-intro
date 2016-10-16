#Actualizar los paquetes
sudo apt-get update -y

# Instalamos git
sudo apt-get install -y git gitk git-gui

# Instamamos el compilador de C y las librerías requeridas por rbenv para construir los binariosd e ruby
sudo apt-get install -y gcc build-essential libpq-dev libssl-dev libreadline-dev libsqlite3-dev zlib1g-dev

# Instrucciones del sitio web de RBENV en Github
# https://github.com/sstephenson/rbenv
# Clonar el repositorio git de rbenv en ~/.rbenv
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv

#Agregar ~/.rbenv al $PATH para poder acceder a rbenv desde la consola
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
tail ~/.bashrc

#Agregar "rbenv init" al shell para habilitar autocomplete
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
tail ~/.bashrc

#Agregar los contenidos modificados a la sesión actual 
set +e
source ~/.bashrc
set -e
which rbenv

#Prueba
rbenv help


#Agregar el comando install al rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
tail ~/.bashrc

#Source de la nueva ubicación del path en la sesión actual y verificar que tengamos el comando “install”
set +e
source ~/.bashrc
set -e
which rbenv
rbenv help | grep install

# Instalar una versión de Ruby (puede ser otra)
rbenv install -v 2.2.2

# Setear la versión del ruby global a usar
rbenv global 2.2.2
ruby -v

#Setear por defecto que las gemas no generen documentación local 
echo "gem: --no-document" > ~/.gemrc
gem install bundler

#Instalar rails (~5min)
gem install rails -v 4.2.3
rails -v

# install shims for newly installed Ruby gems that provide commands
rbenv rehash


#Instalar Node.js 
sudo apt-get install -y software-properties-common python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update -y
sudo apt-get install -y nodejs

#install phantomJS
sudo apt-get install -y bzip2
export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64"
cd /tmp
curl -L https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 | tar xvjf -
sudo mv $PHANTOM_JS /usr/local/share
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
phantomjs --version



cd /tmp
curl http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2 | tar -xjf -
sudo mv 'Sublime Text 2' /opt/SublimeText2
echo export PATH='$PATH:/opt/SublimeText2' >> ~/.bashrc

#inspect installation
tree ~/ -L 1
tree ~/.rbenv -L 1
