#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"


if [[ ! -f "pmd-dist-7.0.0-rc3-bin.zip" ]]; then
    wget https://github.com/pmd/pmd/releases/download/pmd_releases%2F7.0.0-rc3/pmd-dist-7.0.0-rc3-bin.zip
    unzip pmd-dist-7.0.0-rc3-bin.zip
fi


#alias pmd="${SCRIPT_DIRECTORY}/pmd-bin-7.0.0-rc3/bin/pmd"
#pmd check -d /usr/src -R rulesets/java/quickstart.xml -f text

sudo apt-get update
sudo apt-get install -y default-jdk
sudo apt-get install -y default-jre
