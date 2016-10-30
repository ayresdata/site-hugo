# site-hugo
Code for Hugo site generator for the ayres.github.io pages.

Do changes, adn `./deploy.sh`.


# NOTE to build the site

I found pretty much clean by ignoring the public directory and copy the full content of public into the ayresdata.github.io repo and doing commit and push on it. 

Using submodules I was not able to push without having conflicts and doing complex workarounds.

So, after running `hugo` and `hugo server` , you want to:

```
cp -rf public/* ../ayresdata.github.io/
cd ../ayresdata.github.io/
git commit -a
git push origin master
```

# Fixes

git submodule add -b master git@github.com:ayresdata/ayres-theme.git themes/ayres-theme

git submodule add --force -b master git@github.com:ayresdata/ayresdata.github.io.git public
