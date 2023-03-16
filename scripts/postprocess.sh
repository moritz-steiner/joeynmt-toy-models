#! /bin/bash

scripts=`dirname "$0"`
base=$scripts/..

data=$base/data
tools=$base/tools

mkdir -p $base/shared_models

src=de
trg=en

# cloned from https://github.com/bricksdont/moses-scripts
MOSES=$tools/moses-scripts/scripts

#################################################################

# redo tokenization one way

cat $translations/test.full.$model_name.$trg | $MOSES/tokenizer/tokenizer.perl $trg > $translations/test.retokenized.apos.$model_name.$trg

