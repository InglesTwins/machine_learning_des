#!/bin/bash
if [[ ! -d build ]]; then
    mkdir build
fi

while getopts "C" option; do
    case $option in 
        C) 
            echo "Running cmake"
            if [[ -e ./build/CMakeCache.txt ]]; then
                rm ./build/CMakeCache.txt
            fi
            cmake -B./build -S./ -DCMAKE_BUILD_TYPE=Release
            ran_cmake=$option
            ;;
        :)
            echo "Unexpected input: -${OPTARG} ${option}"
            ;;
        *)
            echo "Building project"
            ;;
    esac
done

if [ $? -eq 0 ]; then
    make -j4 -C ./build
    if [ $? -eq 0 ]; then
        echo "Running program. . ."
        ./build/MachineLearningDEs.exe
    else
        echo "make failded"
    fi
else 
    echo "cmake failed"
fi
