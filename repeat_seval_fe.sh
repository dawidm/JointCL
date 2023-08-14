#!/bin/bash

for seed in {31546..31556}
do
    echo "run_semeval with seed: $seed"
    export PYTHONPATH=$PYTHONPATH:utils
    python -W ignore::UserWarning run_semeval.py --seed $seed --device 'cuda:0' --dataset 'fm'
done