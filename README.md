# SLHA_vim


SLHA files are a simple text file that contains the information about the Supersymmetry Models. It is created using SUSY generators like Isajet and SPHeno. 

The purpose of this project is to create a vim plugin that can be used to provide syntax`highlighting for SLHA files. 

## Installation

I did not make it as a vim full vim plugin so that it can be used with plugin managers. But hopfully this can be done in the future.

But installing it is easy.

1- Clone this repository

```bash
git clone https://github.com/MohamedElashri/slha_vim
```

Then cd to the repository 

``` bash
cd slha_vim
```

2- Copy the `slha.vim` into `~/.vim/syntax/` 

``` bash 
cp slha_plugin/slha.vim ~/.vim/syntax/
```

3-  Copy `scripts.vim` into `~/.vim/`
```bash
cp slha_plugin/scripts.vim ~/.vim/
```

Enjoy!

Hint: If you already have `scripts.vim` file, you can open the file and add the content of `scripts.vim` to the end of the file.


