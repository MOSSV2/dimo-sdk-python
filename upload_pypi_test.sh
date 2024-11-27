#!/bin/zsh

rm -rf ./build
rm -rf ./dist
rm -rf ./dimo-sdk.egg-info

python3 setup.py sdist bdist_wheel

python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
