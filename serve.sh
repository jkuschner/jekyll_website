#!/bin/bash
while true; do
jekyll serve &
sleep 10
pkill ruby2.7 
sleep 1
done
