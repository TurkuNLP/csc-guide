# Credits to Farrokh and Antti

# TL;DR
# unload all modules first
module purge
# load the modules needed for the venv
module load <modulename> # e.g. tensorflow/1.14.0
# create the venv
python -m venv <venvname> --system-site-packages
# activate the venv
source <venvname>/bin/activate
# pip install packages
pip install <packagename> # optionally <packagename>==<versionnumber>
# deactivate the venv
deactivate

# How to install virtualenv on puhti and add your packages into it, while using tensorflow module from the puhti:
# 1) do not use virtualenv (it does not work), use venv instead
# 2) note that after installing venv, and activating it, which pip points to the correct pip, but *weirdly" , pip --version points to system pip! .. ignore this, and simply install all packages you want (besides what comes with the tensorflow module).

module list
module purge
module load tensorflow/1.14.0
module list
pip --version
# --> pip 19.2.2 from /appl/soft/ai/miniconda3/envs/tensorflow-1.14.0/lib/python3.7/site-packages/pip (python 3.7)
which pip
# --> /appl/soft/ai/miniconda3/envs/tensorflow-1.14.0/bin/pip
mkdir PYENVS
cd PYENVS
python -m venv PY373 --system-site-packages
source PY373/bin/activate
which pip
# --> ~/PYENVS/PY373/bin/pip
pip --version
# --> pip 19.2.2 from /appl/soft/ai/miniconda3/envs/tensorflow-1.14.0/lib/python3.7/site-packages/pip (python 3.7)
pip install networkx==2.1
ls PY373/lib/python3.7/site-packages/
# --> networkx 
python -c "import networkx;print(networkx.__version__);"
# --> 2.1
