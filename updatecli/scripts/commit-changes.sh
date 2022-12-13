#!/bin/bash

git config user.email "kubewarden@suse.de"
git config user.name "Kubewarden bot"

files=$(git --no-pager diff --name-only charts)
echo $files
echo "-----------------------------------"

git commit -m "Update helm charts" \
	-m "Commit changes made by the CI jobs to update the helm chart values and versions" \
	$files
git push origin 
