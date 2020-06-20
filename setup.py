# -*- coding: utf-8 -*-

from setuptools import setup, find_packages

with open('README.rst') as f:
    readme = f.read()

with open('LICENSE') as f:
    license = f.read()

setup(
    name='grammar_school',
    version='0.1.0',
    description='Hopefully a well-constructed Python package',
    long_descripton=readme,
    author='Christopher Basketfield',
    author_email='chris.basketfield@gmail.com',
    url='https://github.com/cbfield/grammar_school',
    license=license,
    packages=find_pckages(exclude=('tests','docs'))
)
