install_path="/home/aistudio/external-libraries"
file_path="/home/aistudio/work"

cd ~
add0="export PYTHONPATH=${install_path}:\$PYTHONPATH"
add1="export LD_LIBRARY_PATH=${install_path}/quda/build/lib:\$LD_LIBRARY_PATH"
echo ${add0} >> ~/.bashrc 
echo ${add1} >> ~/.bashrc 
source ~/.bashrc