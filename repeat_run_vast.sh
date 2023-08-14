#!/bin/bash

for seed in {31546..31556}
do
    echo "run_vast with seed: $seed"
    python -W ignore::UserWarning run_vast.py --seed $seed --device 'cuda:0' --dataset 'tradition'
done