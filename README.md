# firstdoit.com

This is my personal site.

The theme is a fork of the [Vapor Theme](https://github.com/sethlilly/Vapor) by Seth Lilly.

You are welcome to use it, modify it or otherwise do as you please.

**Please mind the Google Analytics and Disqus variables, though ;)**

## Getting started

    git clone git@github.com:firstdoit/firstdoit.com
    git clone git@github.com:TryGhost/Ghost.git
    ln -s ~/Projects/firstdoit.com ~/Projects/Ghost/content/themes/firstdoit.com

Install dependencies and start grunt

    cd firstdoit.com
    npm i
    grunt

Finally, install ghost dependencies and start the engine

    cd Ghost
    npm i
    grunt init
    npm start

Done!
