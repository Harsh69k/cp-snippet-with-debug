#!/bin/sh

#  set.sh
#  cpCode
#
#  Created by Harsh Anand on 04/04/24.
#


#!/bin/bash

SCRIPT_NAME=$(basename "$0")

RED='\033[0;31m'
GREEN='\033[0;32m'
CLEAR='\033[0m'
Yellow='\033[0;33m'
Blue='\033[0;34m'

log_message() {
  local level="$1"
  local message="$2"
  echo -e "[${level}] (${SCRIPT_NAME}): ${message}" >&2
}

copy_file() {
  local cpCode="$1"
  local dest_dir="$2"

  if [ ! -f "$cpCode" ]; then
    log_message "${RED}" "${RED}Error: File ${CLEAR} ${Yellow} '$cpCode' ${RED} does not exist in source directory${CLEAR}."
    exit 1
  fi

  sudo cp "$cpCode" "$dest_dir"

  if [ $? -eq 0 ]; then

    log_message "${GREEN}" " File ${Yellow}'$cpCode'${CLEAR} copied successfully to ${Yellow}'$dest_dir'.${CLEAR}"
  else
     log_message "${RED}" "${RED}\nError:\n ${CLEAR}"
     log_message "${RED}" "${RED}Error:${CLEAR} Failed to copy file ${RED}'$cpCode'${CLEAR} to ${RED}'$dest_dir'.${CLEAR}"
     log_message "${RED}" "${RED}\n\nError:might have ${GREEN}insuffsient permssion\n  ${CLEAR}"
    exit 2;
  fi
}

source_dir="./"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  sudo mkdir /usr/include/c++/11/bits
  dest_dir="/usr/include/c++/11"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  sudo mkdir /Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/bits
  dest_dir=  "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/bits/"


else
  log_message "${RED}" "Error: Unsupported OS. This script only works for Linux and macOS.${CLEAR}"
  exit 1
fi

files=("debug.h" "stdc++.h")

if [ ! -d "$source_dir" ]; then
  log_message "${RED}" "Error: Source directory ${CLEAR} '$source_dir'${RED} does not exist.${CLEAR} "
  exit 1
fi

for file in "${files[@]}"; do
  copy_file "$source_dir/$file" "$dest_dir"
  sleep 1
done
sleep 0.5



echo -e "${GREEN}\ncopying done${CLEAR}\n"
exit


exit
