Activate conda env
```
conda activate base
conda activate myenv
```
Install python packages to conda (if required):
```
conda install -y jupyter matplotlib numpy
conda install pytorch torchvision -c pytorch
```

Download the dataset from hugging face into /datasets/animals directory
https://huggingface.co/datasets/purav/animals