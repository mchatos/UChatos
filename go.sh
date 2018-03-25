#!/bin/bash

vagrant destroy --force

rm -f 00*
rm -f test

vagrant up | tee std.log
