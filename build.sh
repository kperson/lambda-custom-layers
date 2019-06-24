#!/bin/bash

make java11

cd swift5
./build.sh

cd ../
terraform apply
