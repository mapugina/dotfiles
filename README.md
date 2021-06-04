# Purpose

This repository exists to hold an apply my dotfiles in a way that can be copy, extended, and easily forked. 

# File structure

Anything that is not topical (install scripts, etc) is included at the top level of the repostory.

## modules

A list of topical modules to be loaded automatically. Modules should be mostly platform independent. Each directory is a topical module, dedicated to a particular purpose. Files in the modules will be loaded given the following rules in the following order:

* (filename).envvar     - Simple environment variables that require no particular logic to set and thus can be loaded instantly.
* (filename).shrc       - This is the general Borne shell configuration. Will be loaded first and overriden by shell specific profiles
* (filename).bashrc     - Borne again shell specific profiling (only loaded if in bash)
* (filename).zshrc      - Z shell specific profiling (only loaded in zshell)
* (filename).aliases    - Simple command aliases that can be loaded by any shell

Files with file names will execute before their nameless variants.

## shells

The "Top level" file for the specific shells.

## secrets

A special module to be ignored by git. Loaded last it is for loading environment variables that you do not wany commited.