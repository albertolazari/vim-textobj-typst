# Typst vim text objects
A couple of useful text objects to write Typst code in Vim

Inspired by [vim-textobj-latex](https://github.com/rbonvall/vim-textobj-latex/tree/master)

The plugin provides the following text objects:

|a |i |Description                                |
|--|--|-------------------------------------------|
|am|im|Inline math equation `$y = e^x$`           |
|aM|iM|Block math equation `$ sum_(i in NN) x_i $`|
|al|il|List item `- item` or `+ numbered item`    |

# Installation
The plugin depends on [`kana/vim-textobj-user`](https://github.com/kana/vim-textobj-user).
It won't work unless you install `textobj-user` first

If you use Vundle, add the following lines to your `.vimrc`:
```vim
Bundle 'kana/vim-textobj-user'
Bundle 'albertolazari/vim-textobj-typst'
```

and then run `:BundleInstall` from within Vim.

If you use Pathogen, clone both repos in your bundle directory:
```bash
cd ~/.vim/bundle
git clone git://github.com/kana/vim-textobj-user
git clone git://github.com/albertolazari/vim-textobj-typst
```

# Author
Alberto Lazari <alberto.lazari@gmail.com>

# License
Same terms as Vim itself.
