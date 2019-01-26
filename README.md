# Neovim + Python ❤️

## Requierements

- neovim
- the-silver-searchear

## Instalation

Make 2 virtualenvs: **neovim2** and **neovim3**

In both of them install neovim

```bash
pip install neovim
```

Go to file 'config/settings.vim' and change the last 2 lines to match the path
of your virtualenvs.

```bash
let g:python_host_prog = '/<Your absolut path to>/.virtualenvs/neovim2/bin/python'
let g:python3_host_prog = '/<Your absolut path to>/.virtualenvs/neovim3/bin/python'
```

Put this git repository in

```
~/.config/nvim
```

After those steps, on the first execution of `nvim` everything will install automatically.

Then in Neovim do:

```
:UpdateRemotePlugins
```
