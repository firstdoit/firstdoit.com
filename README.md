# Mercury Vapor

This is my personal fork of the [Vapor Theme](https://github.com/sethlilly/Vapor) by Seth Lilly.

You are welcome to use it, modify it or otherwise do as you please.

Please mind the Google Analytics and Disqus variables, though ;)

## Getting started

Clone this theme:

    git clone git@github.com:firstdoit/mercury-vapor

Clone the Ghost repository in a sibling directory:

    git clone git@github.com:TryGhost/Ghost.git

Symlink `mercury-vapor` into ghost's `themes` folder

    ln -s ~/Projects/mercury-vapor ~/Projects/Ghost/content/themes/mercury-vapor

Install dependencies and start grunt

    cd mercury-vapor
    npm i
    grunt

Finally, install ghost dependencies and start the engine

    cd Ghost
    npm i
    grunt init
    npm start

Done!
