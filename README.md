# pypi-info-generator

Script to auto generate Python package info on requirements.txt

## prerequisites

- [jq is a lightweight and flexible command-line JSON processor.](https://stedolan.github.io/jq/)

**OSX**

    brew install jq

**Ubuntu**
    
    sudo apt-get install jq

## Usage

    ./pipy-info.sh requirements.txt

## Result

**requirements.txt**
```
Pygments==2.0.2
simplejson==3.3.1
oauth2client
```

**new-requirements.txt**
```
# Pygments is a syntax highlighting package written in Python.
# http://pygments.org/
Pygments==2.0.2

# Simple, fast, extensible JSON encoder/decoder for Python
# http://github.com/simplejson/simplejson
simplejson==3.3.1

# OAuth 2.0 client library
# http://github.com/google/oauth2client/
oauth2client
```