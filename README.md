# Training MNIST on Docker and Singularity using Vagrant

```bash
vagrant up

vagrant ssh

docker build -t mnist .

docker run -p 8001:8001 -t mnist

```

# To run Singularity container

```bash
cd singularity

Vagrant up

Vagrant ssh

git clone https://github.com/omkarmark9/mnist-ops.git

cd mnist-ops

singularity pull torchenv.sif shub://manuel-munoz-aguirre/singularity-pytorch-gpu:1.0.0

singularity shell --nv torchenv.sif

Once inside the container, 

python3 main.py —epochs 1

```
