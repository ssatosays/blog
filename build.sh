#!/bin/bash

rm -rf ./public ./docs && hugo --minify && mv ./public ./docs
