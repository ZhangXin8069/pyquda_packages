file_path="./"
file_path=$(cd ${file_path} && pwd)
install_path="/home/aistudio/external-libraries" #absolute path and same to quda install_path
mkdir ${install_path} -p

pushd ~
echo "export PYTHONPATH=${install_path}:\$PYTHONPATH" >> ~/.bashrc 
echo "export LD_LIBRARY_PATH=${install_path}/quda/build/lib:\$LD_LIBRARY_PATH" >> ~/.bashrc 
source ./.bashrc
popd