#! /bin/bash

scripts=`dirname "$0"`
base=$scripts/..

data=$base/data
configs=$base/configs

translations=$base/translations

mkdir -p $translations

src=de
trg=en

# cloned from https://github.com/bricksdont/moses-scripts
MOSES=$base/tools/moses-scripts/scripts

num_threads=6
device=5

model_name=transformer_iwslt14_deen_bpe

### Translation
CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/$model_name.yaml < $data/test.raw.$src > $translations/test.full.$model_name.$trg

### Postprocessing
# redo tokenization one way
cat $translations/test.full.$model_name.$trg | $MOSES/tokenizer/tokenizer.perl -l $trg > $translations/test.retokenized.$model_name.$trg

# TODO: your postprocessing here

### BLEU Comparison
# compute case-sensitive BLEU of the fully deprocessed texts with sacrebleu internal tokenization
cat $translations/test.full.$model_name.$trg | sacrebleu $data/test.raw.$trg

# TODO: your evaluations here.
