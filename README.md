## rustpeg.vim
#### A simple syntax highlighter vim plugin for `.rustpeg` files.
**Important dependency** on [rust-lang/rust.vim][rv], or any [Rust][r] plugin, really.

### Installation
#### Using [Vundle][v]

1. Add `Plugin 'treycordova/rustpeg.vim'` to `~/.vimrc`
2. `vim +PluginInstall +qall`

*Note:* Vundle will not automatically detect `.rustpeg` files properly if `filetype
on` is executed before Vundle. Please check the [quickstart][vqs] for more
details.

#### Using [Pathogen][p]

```shell
git clone --depth=1 https://github.com/treycordova/rustpeg.vim.git ~/.vim/bundle/rustpeg.vim
```

[r]: https://www.rust-lang.org
[rv]: https://github.com/rust-lang/rust.vim
[v]: https://github.com/gmarik/vundle
[vqs]: https://github.com/gmarik/vundle#quick-start
[p]: https://github.com/tpope/vim-pathogen
[nb]: https://github.com/Shougo/neobundle.vim

#### Using [NeoBundle][nb]

1. Add `NeoBundle 'treycordova/rustpeg.vim'` to `~/.vimrc`
2. Re-open vim or execute `:source ~/.vimrc`
