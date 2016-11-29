# Deploy de una aplicación para Nginx


# 1. TRANSFIRIENDO EL CODIGO A NUESTRO SERVIDOR
	# 1.1 Push a un repositorio git
	git Push

	# 1.2  Si nuestro servidor es remoto deberíamos conectarmos por ssh. 
	ssh adminuser@yourserver.com

	# Cada aplicación debería tener su usuario. 
	sudo adduser myappuser

	# Nos aseguramos de que el usuario tenga las claves SSH instaladas
	sudo mkdir -p ~myappuser/.ssh
	touch $HOME/.ssh/authorized_keys
	sudo sh -c "cat $HOME/.ssh/authorized_keys >> ~myappuser/.ssh/authorized_keys"
	sudo chown -R myappuser: ~myappuser/.ssh
	sudo chmod 700 ~myappuser/.ssh
	sudo sh -c "chmod 600 ~myappuser/.ssh/*"

	# 1.3 Instalar Git en el servidor
	sudo apt-get install -y git

	# 1.4 Pull del Codigo
		# Se debe elegir una ubicación para código de la aplicación. 
		# Una buena ubicación es /var/www/YOUR_APP_NAME
		# a. Crear un directorio para el repositorio
			sudo mkdir -p /var/www/myapp
		# b. Hacer que el usuario de la aplicación sea el owner del directorio
			sudo chown myappuser: /var/www/myapp
		# c. Hacer pull desde git
			cd /var/www/myapp
			sudo -u myappuser -H git clone --branch=end_result https://github.com/phusion/passenger-ruby-rails-demo.git code
			#sudo -u myappuser -H git clone  https://github.com/codiumsa/ruby-on-rails-intro.git code
			# Nuestro codigo ahora está en: /var/www/myapp/code

# 2. Preparando el entorno de la aplicación
	# 2.1 Login como usuario de la aplicación
		sudo -u myappuser -H bash -la
		# Setear la versión de ruby para RVM
		rvm use ruby-2.2.3
	# 2.2 Instalar las dependencias de la aplicación
		# Si vamos a necesitar bases de datos distintas a sqlite 
		cd /var/www/myapp/code
		bundle install --deployment --without development test
	# 2.3 Configurar la database.yml y secrets.yml
		# A. Editar el archivo database.yml y agregar el entorno de producción si no existe. 
			nano config/database.yml
			#production:
			#  adapter: sqlite3
			#  database: db/production.sqlite3
		# B. Rails necesita un clave única para encriptar las sesiones. 
			bundle exec rake secret
				#Este comando produce una clave que debe ser copiada y pegada en el archivo config/secrets.yml
			nano config/secrets.yml
			# El archivo luce así:
				# production:
				#  secret_key_base: <%=ENV["SECRET_KEY_BASE"]%>
			# Debe quedar así:
				# production:
				#  secret_key_base: clave_copiada
		# C. Cambiar los permisos a archivos sensibles
			chmod 700 config db
			chmod 600 config/database.yml config/secrets.yml
	# 2.4 Compilar la aplicación rails y correr los migrations
		bundle exec rake assets:precompile db:migrate RAILS_ENV=production


# 3. Configurar passenger con nginx
	#3.1 Debemos configurar el passenger para que nginx sepa como servir nuestra aplicación. 
		# Necesitamos indicarle al passenger con qué ruby correr la aplicación. 
		passenger-config about ruby-command
		# ** Copiar: ** El ruby command: /usr/local/rvm/gems/ruby-2.2.3/wrappers/ruby
	#3.2 Volver a la cuenta administrador
		exit
	# 3.3 Editar la configuración de Nginx
		#a. Necesitamos crear un archivo de configuración de Nginx para crear un virtual host que apunte a nuestra aplicación
			#Este virtual host le indica a Nginx (y a passenger) donde está alojada nuestra aplicación. 
			sudo nano /etc/nginx/sites-enabled/myapp.conf
			#Incluir dentro del archivo
			# remplazar 104.131.101.155 por el host name (puede ser localhost)
			#remplazar /usr/local/rvm/gems/ruby-2.3.0/wrappers/ruby por el comando ruby que se desee utilizar
			server {
			    listen 80;
			    server_name 104.131.101.155;

			    # Tell Nginx and Passenger where your app's 'public' directory is
			    root /var/www/myapp/code/public;

			    # Turn on Passenger
			    passenger_enabled on;
			    passenger_ruby /usr/local/rvm/gems/ruby-2.3.0/wrappers/ruby;
			}
		#b. Reiniciar el servidor
		sudo service nginx restart
	# 3.4 Test
		curl http://104.131.101.155



# 4. Actualizaciones
	# Iniciar sesió como usuario de la aplicación
	ssh myappuser@yourserver.com
	# Actualizar el repositorio
	cd /var/www/myapp/code
	git pull
	# Preparar la aplicación
	rvm use ruby-2.3.0
	# Instalar las dependencias
	bundle install --deployment --without development test
	# Compilar los assets y correr migrations
	bundle exec rake assets:precompile db:migrate RAILS_ENV=production
	# Reiniciar la aplicación
	passenger-config restart-app $(pwd)

