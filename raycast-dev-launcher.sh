#!/bin/bash

# Requirements:
# - iTerm
# - Visual Studio Code
# - Raycast

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Dev Launcher
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Project" }

# Documentation:
# @raycast.author Martin Frouin
# @raycast.authorURL https://github.com/martinfrouin

PROJECT=$1
DEV_FOLDER=~/Projects # Your dev folder

launchProject() {
    cd $1
    code .
    open -a iTerm.app $1
}

# Example:
# Duplicate the if statement for each project you want to add
if [[ $PROJECT == 'myProject' ]]
then
    PROJECT_FOLDER=$DEV_FOLDER/my-project
    echo "Launching $PROJECT ..."
    launchProject $PROJECT_FOLDER
elif [[ $PROJECT == 'edit' ]]
then
    echo "Editing configuration file..."
    code ~/Scripts/launch-dev-project.sh
else
    echo "Unknown project -> Go to Projects folder"
    launchProject $DEV_FOLDER
fi
