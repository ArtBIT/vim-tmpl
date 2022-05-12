## Overview

VIM-TMPL is a plugin with the custom bash templating function

## Features
You can call the templates by running the following command:
`:Tmpl html/html5`

Works best when used with snippets plugins like SnipMate ot UltiSnips.

## Installation
There are several plugin managers for vim, which will either allow you to
manually clone vim plugin repositories, or will do so for you. Probably the
two most popular ones currently are `pathogen
<https://github.com/tpope/vim-pathogen>`_ and `vundle
<https://github.com/gmarik/Vundle.vim>`_. Please refer to their docs for
instructions on how to install plugins.

## Configuration
You can create your own templates directory with your own templates

```
   # i.e. in your $HOME
   # 
   # $HOME/templates
   # $HOME/templates/react
   # $HOME/templates/react/jsx
   #
   # Just export the path in VIM_TMPL_TEMPLATES env var
   export VIM_TMPL_TEMPLATES=$HOME/templates
   
   # And then in nvim
   :Tmpl react/jsx 
```

## License

See the [LICENSE](LICENSE) file.
