#just Open ur terminal and add this lines without $ in order to install TensorFlow with Virtualenv
# for more information check here https://www.tensorflow.org/install/install_linux

# 1- Install pip and virtualenv 
  sudo apt-get install python3-pip python3-dev python-virtualenv

# 2- Create a virtualenv environment 
# assumed that targetDirectory is ~/tensorflow, but you may choose any directory.
 virtualenv --system-site-packages -p python3  tensorflow

# 3- Activate the virtualenv environment by issuing one of the following commands
 source ~/tensorflow/bin/activate

# 4- Ensure pip ≥8.1 is installed
 easy_install -U pip

# 5- install TensorFlow in the active virtualenv environment
 pip3 install --upgrade tensorflow    

# 6- validate the installation.
 source ~/tensorflow/bin/activate 






