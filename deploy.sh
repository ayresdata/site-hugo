#!/bin/bash

rm -rf public/

sleep 0.5

#git submodule add -b master git@github.com:ayresdata/ayresdata.github.io.git public

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # -t "hugo-creative-theme" # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd public
# Add changes to git.
echo "ayres.io" > CNAME

git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
	  then msg="$1"
fi

git commit -m "$msg"

	  # Push source and build repos.
git push origin master

	  # Come Back
cd ..
