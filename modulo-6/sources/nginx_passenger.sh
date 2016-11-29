#Instalando dependencias necesarias
sudo apt-get update
sudo apt-get install -y curl gnupg build-essential

# -------------------------------------- Instalar RVM -------------------------------------- 
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
$ curl -sSL https://get.rvm.io | sudo bash -s stable
$ sudo usermod -a -G rvm `whoami`

#En los sistemas donde sudo está configurado con secure_path el entorno de shel necesita ser modificado a rvmsudo_secure_path=1
# secure_path está configurado en la mayoría de los sistemas Linux. 
# El siguiente comando intenta audetectar si es necesaria o no la instalación del rvmsudo_secure_path=1
# Y solamente instala la variable de entorno si es necesario. 
if sudo grep -q secure_path /etc/sudoers; then sudo sh -c "echo export rvmsudo_secure_path=1 >> /etc/profile.d/rvm_secure_path.sh" && echo Environment variable installed; fi

#-------------------------------------------------------------------------------------------------------
# -------------------------------------- Instalación de Ruby -------------------------------------- 
#-------------------------------------------------------------------------------------------------------

rvm install ruby
rvm --default use ruby

#Instalación de una versión específica
# rvm install ruby-X.X.X 
# rvm --default use ruby-X.X.X

#Instalación del Bundler
gem install bundler --no-rdoc --no-ri

#Instalación de NodeJs (Siempre que usemos rails)
sudo apt-get install -y nodejs &&
sudo ln -sf /usr/bin/nodejs /usr/local/bin/node

#-------------------------------------------------------------------------------------------------------
# -------------------------------------- Instalación de Passenger -------------------------------------- 
#-------------------------------------------------------------------------------------------------------
#Instala nuestra clave PGP y agrega soporte https para APT
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates

# Agrega nuestro repositorio APT
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

# Instala Passenger + Nginx
sudo apt-get install -y nginx-extras passenger


#-------------------------------------------------------------------------------------------------------
# -------------------------------------- Habilitar el passenger para Nginx -----------------------------
#-------------------------------------------------------------------------------------------------------

# ********************** CONFIGURACIÓN MANUAL ********************** 
	# EDITAR el archivo /etc/nginx/nginx.conf
	# Descomentar: include /etc/nginx/passenger.conf;
	# Si no existe la línea, agregar

# Reiniciar NGINX
sudo service nginx restart


#-------------------------------------------------------------------------------------------------------
# -------------------------------------- Validar instalación passenger ---------------------------------
#-------------------------------------------------------------------------------------------------------

#Verificar instalación de passenger
sudo /usr/bin/passenger-config validate-install

#Verificar si Nginx ha iniciado los procesos del passenger
sudo /usr/sbin/passenger-memory-stats

# ********************** OBSERVACION ********************** 
# Las actualizaciones de Nginx y Passenger y el Sistema son gestionadas por el package manager APT (regularmente)
# Se deberían correr los siguientes comandos regularmente para mantener el sistema actualizado
	# sudo apt-get update
	# sudo apt-get upgrade

