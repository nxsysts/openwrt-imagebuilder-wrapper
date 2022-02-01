#!/bin/bash

buildImage () {
    local profile="$1"

    #packages="onion-repo-keys"
    #make image PROFILE=$profile PACKAGES="$packages"
    make image PROFILE=$profile
    
    if [ $? -ne 0 ]; then
        echo "ERROR during image building for $profile"
        exit 1
    fi 
}

buildImage onion_omega2
buildImage onion_omega2p
