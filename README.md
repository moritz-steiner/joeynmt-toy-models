# joeynmt-toy-models

This repo is just a collection of scripts showing how to install [JoeyNMT](https://github.com/joeynmt/joeynmt), train and evaluate models.
It is a fork of [this](https://github.com/bricksdont/joeynmt-toy-models) original repo.

# Requirements

- This only works on a Unix-like system, with bash.
- Python 3 must be installed on your system, i.e. the command `python3` must be available
- Make sure virtualenv is installed on your system. To install, e.g.

    `pip install virtualenv`

# Steps

Clone this repository in the desired place:

    git clone https://github.com/moritz-steiner/joeynmt-toy-models
    cd joeynmt-toy-models

Create a new virtualenv that uses Python 3. Please make sure to run this command outside of any virtual Python environment:

    ./scripts/make_virtualenv.sh

**Important**: Then activate the env by executing the `source` command that is output by the shell script above.

Download and install required software:

    ./scripts/download_install_packages.sh
    
Have a look at the example scripts how to train a model. You do not need to execute them for this exercise, as you will be using a pre-trained model
but study it carefully nonetheless.

    scripts/train.sh
