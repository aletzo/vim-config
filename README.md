Installation
============
Execute the following commands to install on your machine:

    mkdir ~/tmp
    git clone http://github.com/aletzo/vim-config.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Open vim and execute:

    :PluginInstall

Find and install a Monaco_Linux-Powerline.ttf:

    https://gist.github.com/kevinis/c788f85a654b2d7581d8#file-monaco-for-powerline-ttf


CTAGS Installation
==================
To install the exuberant ctags (required for the taglist and the tagbar plugins) in OS X:
1. download the compressed file (or the latest version): http://sourceforge.net/projects/ctags/files/ctags/5.8/ctags-5.8.tar.gz/download
2. tar xzvf ctags-5.8.tar.gz
3. cd ctags-5.8
4. ./configure
5. make
Normally you should execute a "make install", but 2 errors will spawn. Do the followings:
6. Duplicate the directory ctags-5.8 to ctags
7. sudo cp ctags /usr/local/bin/ctags
8. sudo chmod -R 755 /usr/local/bin/ctags
9. sudo cp /usr/local/bin/ctags/ctags.1 /usr/local/share/man/man1/ctags.1
10. sudo chmod 644 /usr/local/share/man/man1/ctags.1
11. make install (should work without errors)
Now you have to override the ctags that comes with OS X
12. put 'export PATH="/usr/local/bin/ctags:$PATH"' in your .bash_profile 
13. restart the terminal
14. which ctags should return "/usr/local/bin/ctags"


How to keep the ctags up-to-date (from http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html):

1. Execute:

    git config --global init.templatedir '~/.git_template'
    mkdir -p ~/.git_template/hooks
    
2. Create .git_template/hooks/ctags and mark as executable:

    #!/bin/sh
    set -e
    PATH="/usr/local/bin:$PATH"
    dir="`git rev-parse --git-dir`"
    trap 'rm -f "$dir/$$.tags"' EXIT
    git ls-files | \
      ctags --tag-relative -L - -f"$dir/$$.tags" --languages=-javascript,sql
    mv "$dir/$$.tags" "$dir/tags"

3. Create .git_template/hooks/post-commit and mark as executable:
    
    #!/bin/sh
    .git/hooks/ctags >/dev/null 2>&1 &

4. Create .git_template/hooks/post-merge and mark as executable:
    
    #!/bin/sh
    .git/hooks/ctags >/dev/null 2>&1 &

5. Create .git_template/hooks/post-checkout and mark as executable:
    
    #!/bin/sh
    .git/hooks/ctags >/dev/null 2>&1 &

6. Create .git_template/hooks/post-rewrite and mark as executable:

    #!/bin/sh
    case "$1" in
      rebase) exec .git/hooks/post-merge ;;
    esac

7. Use `git init` in existing repositories to copy these hooks in.

The tags file is located at PROJECT_ROOT/.git/tags

