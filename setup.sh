#!/bin/bash

DATA_FOLDER="data"
SOURCE_FOLDER="rawdata"
SOURCE_FILE="$SOURCE_FOLDER/train.csv"

if [[ ! -d $SOURCE_FOLDER ]]; then
  mkdir $SOURCE_FOLDER
fi

if [[ ! -f $SOURCE_FILE ]]; then
  curl -o $SOURCE_FILE https://storage.googleapis.com/data-1340.appspot.com/Facebook-checkins/train.csv 
fi

if [[ ! -d $DATA_FOLDER ]]; then
  mkdir $DATA_FOLDER
fi




