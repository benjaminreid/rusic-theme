#!/bin/bash

echo "Please specify a remote Git repository:"
read repo

# initialise a new git repo
git init;

git remote add origin $repo

# add this bin folder to the .gitignore
echo bin >> .gitignore;

# add everything to git
git add .;

# commit everything
git commit -m "Initial commit";

# setup scripts
bower init;
mkdir bower_components;

npm init;
npm install --save coffee-script gulp gulp-coffee gulp-concat gulp-minify-css gulp-ruby-sass gulp-svg2png gulp-uglify gulp-webserver main-bower-files;

gulp build;
