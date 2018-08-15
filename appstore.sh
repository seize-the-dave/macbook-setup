#!/usr/bin/env bash

mas help
cat appstore-packages.txt | xargs mas install
