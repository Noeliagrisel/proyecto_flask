Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"  # Ubuntu 18.04 (o podés usar ubuntu/focal64 para 20.04)

  config.vm.network "forwarded_port", guest: 5000, host: 5000

  config.vm.provision "shell", inline: <<-SHELL
    # Actualizar e instalar dependencias
    sudo apt-get update
    sudo apt-get install -y docker.io git

    # Clonar tu repo
    git clone https://github.com/Noeliagrisel/proyecto_flask.git /home/vagrant/proyecto_flask

    # Construir y correr el contenedor
    cd /home/vagrant/proyecto_flask
    sudo docker build -t flask-app .
    sudo docker run -d -p 5000:5000 flask-app
  SHELL
end
