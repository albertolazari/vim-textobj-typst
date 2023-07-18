# Typst vim text objects
A couple of useful text objects to write Typst code in Vim. Inspired by [vim-textobj-latex](https://github.com/rbonvall/vim-textobj-latex/tree/master)

The plugin provides the following text objects:

|a   |i   |Description                                |
|----|----|-------------------------------------------|
|`am`|`im`|Inline math equation `$y = e^x$`           |
|`aM`|`iM`|Block math equation `$ sum_(i in NN) x_i $`|
|`al`|`il`|List item `- item` or `+ numbered item`    |
|`a*`|`i*`|Bold text `*this is bold text*`            |
|`a_`|`i_`|Emph text `_this is emph text_`            |

Note that inner text objects may not always work as expected: when having an empty text object like `$$`, the inner object is considered to be the entire one, not the empty selection inside it

For instance, typing `di*` into `**` will delete it, instead of just placing the cursor inside it

# Dependencies
- [vim-textobj-user](https://github.com/kana/vim-textobj-user): provides the base to create custom text objects
- [typst.vim](https://github.com/kaarmu/typst.vim): to let Vim recognize the Typst filetype

# Installation
If you use Vundle, you can add the following lines to your `.vimrc`:
```vim
Bundle 'https://github.com/kaarmu/typst.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'albertolazari/vim-textobj-typst'
```
then run `:BundleInstall` from within Vim
