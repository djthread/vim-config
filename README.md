Thread's Vim Configs
--------------------

These instructions assume you're starting without any vim configuration. If you
wish to integrate my settings into your own setup, please disregard the
following instructions and instead check out the repository off to the side,
manually merging stuff you want into your own setup.

Setup
=====

Make sure `~/.vim` doesn't exist.

    git checkout https://github.com/djthread/vim-config.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc

Have a look at `.gitmodules` and remove any vim plugins (or "bundles" as the
Pathogen plugin-manager plugin calls them) that you don't want.

Run this script to pull them all down:

    cd ~/.vim
    sh extra/init_submodules.sh

... I can't believe that functionality isn't part of Git. I got the script from
[this Stack Overflow
page](http://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules).

Happy Vimming !
