#Dependencias
#Python >= 3.x
#pip >= 9.0
python --version
pip --version

pip install --user pipenv

#Clonar proyecto github
git clone git@github.com:Steppewolff/DJANGO_ARPBIGIDISBA.git .

#Crear entorno virtual
pipenv install

#Si el entorno ya se ha creado
pipenv shell
pipenv sync
