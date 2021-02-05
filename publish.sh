#!/bin/sh

hugo -D

git -C public add .
git -C public commit -m "Build and commit and push automagically"
git -C public push origin master
