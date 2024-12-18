#!/bin/bash

# Upload project to pypi

rm -rf ./build
rm -rf ./dist
rm -rf ./dimo_sdk.egg-info

python3 setup.py sdist bdist_wheel

python3 -m twine upload dist/*
