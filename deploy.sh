#!/bin/bash

rm -rf public/


# Add the gh-pages branch of the repository. It will look like a folder named public
#git subtree add --prefix=public git@github.com:ayresdata/ayresdata.github.io.git master --squash

# Pull down the file we just committed. This helps avoid merge conflicts
#git subtree pull --prefix=public git@github.com:ayresdata/ayresdata.github.io.git master


sleep 0.5

#git submodule add -b master git@github.com:ayresdata/ayresdata.github.io.git public

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo -t ayres-theme # -t "hugo-creative-theme" # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd public
# Add changes to git.
# echo "ayres.io" > CNAME

git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
	  then msg="$1"
fi

git commit -a -m "$msg"

	  # Push source and build repos.
git push origin master

	  # Come Back
cd ..

# git subtree push --prefix=public git@github.com:ayresdata/ayresdata.github.io.git master
#git subtree add -A --prefix=public git@github.com:ayresdata/ayresdata.github.io.git master

#git subtree push --prefix=public git@github.com:ayresdata/ayresdata.github.io.git gh-pages
#git subtree pull --prefix=public git@github.com:ayresdata/ayresdata.github.io.git master
#git subtree push --prefix=public git@github.com:ayresdata/ayresdata.github.io.git master
#git push 
