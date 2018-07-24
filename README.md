# swift-demangle-vim

![MIT](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)

`swift-demangle-vim` translates cryptic Swift symbols into a human-readable form.

## Installation

```vim
call dein#add('kateinoigakukun/swift-demangle-vim')
```

## Command

#### `:SwiftDemangle`

Demangle symbol under the cursor

## Configuration

This plugin allows to specify `swift demangle` command's options.

```vim
let g:swift_demangle#options = ['-compact', '-no-sugar']
```
