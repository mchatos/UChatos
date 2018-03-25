#!/bin/bash

vagrant destroy --force

rm -f *log

vagrant up | tee vagrant.log
