source ./env.sh

pushd ${install_path}
pip install -U pip numpy mpi4py cupy-cuda11x Cython typing_extensions -t ${install_path} #cupy-cuda11x:rely on `nvcc --version`,more in https://docs.cupy.dev/en/stable/install.html
unzip -oq ${file_path}/PyQuda-master.zip && pushd PyQuda-master
cp ../quda-develop/build/lib/libquda.so ./
pip install . -t ${install_path}
python tests/test.clover.py
popd
popd
