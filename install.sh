source ./env.sh

pushd ${install_path}
#python -m pip install -U mpi4py cupy-cuda11x Cython typing_extensions -t ${install_path} #cupy-cuda11x:rely on `nvcc --version`,more in https://docs.cupy.dev/en/stable/install.html
tar xzf ${file_path}/PyQuda-master.tar.gz && pushd PyQuda-master
cp ../quda-develop/build/lib/libquda.so ./
python -m pip install -U . -t ${install_path}
python tests/test.clover.py
popd
popd
# note
## change external-libraries/pyquda/utils/source.py and external-libraries/pyquda/field.py
## as
## from typing import List, Union
## from typing_extensions import Literal
## to debug
