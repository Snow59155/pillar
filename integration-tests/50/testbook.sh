#!/bin/bash

# Set magic variables for current file & dir
export __dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"


rm -rf build
mkdir build
cd build

# Download Pillar
. ${__dir}/downloadPillar.sh

# Download Archetype

./pillar archetype basic-latex

# Build book

make all