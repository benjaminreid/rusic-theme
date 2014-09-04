#!/bin/bash

bower init;
mkdir bower_components;

npm init;
npm install --save coffee-script gulp gulp-coffee gulp-concat gulp-minify-css gulp-ruby-sass gulp-svg2png gulp-uglify gulp-webserver main-bower-files;

gulp build;
