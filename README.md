Thread's Vim Configs
--------------------

Setup
=====

    git checkout git@github.com:djthread/vim-config.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc

Have a look at `.gitmodules` and remove any vim plugins (or "bundles" as the
Pathogen plugin-manager plugin calls them) that you don't want.

Run this script to pull them all down:

    sh extra/init_submodules.sh

... I can't believe that functionality isn't part of Git. I got the script from
[this Stack Overflow
page](http://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules).

Happy Vimming !
