docker rm -f gpu
rem docker run --gpus all -d -it -p 8848:8888 --privileged=true -v c:\Docker\jupter-gpu\data:/home/jovyan/work -v c:\Docker\jupter-gpu\github:/home/github -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes --name=gpu --user root cschranz/gpu-jupyter:v1.4_cuda-11.6_ubuntu-20.04_python-only
docker run --gpus all -d -it --privileged=true -v c:\Docker\jupter-gpu\data:/home/jovyan/work -v c:\Docker\jupter-gpu\github:/home/github -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes --name=gpu --user root cpchou/pytorch:cuda-11.7_ubuntu-20.04_dlib-19.24_anaconda3 /bin/bash
rem docker exec -it gpu bash
rem docker run --gpus all nvidia/cuda:11.6.2-cudnn8-runtime-ubuntu20.04 nvidia-smi
