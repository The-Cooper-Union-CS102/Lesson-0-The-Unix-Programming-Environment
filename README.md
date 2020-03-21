# Unix

## The Command Line Interface (CLI)

All interaction is via the keyboard, get used to it!

### Linux

`Ctrl+Alt+T`

### macOS

`⌘+space`

Search for and open `terminal`

### Windows

I recommend [Cygwin](https://www.cygwin.com/)

You can download the executable [here](https://www.cygwin.com/setup-x86_64.exe)

1. Choose all default options.
2. When it asks you to choose a download site, pick any.
3. When it asks you to select packages, search for `gcc-g++`, navigate into
`All` -> `Devel` -> `gcc-g++` and select `9.3.0-1` from the dropdown
4. Now search `make`, navigate to `All` -> `Devel` -> `make` and select the
latest version
5. Now search `python`, navigate to `All` -> `Python`.  Select the latest
versions for `python38`, `python38-devel`, `python38-pip`,
`python38-setuptools`, and `python38-virtualenv`.

If you miss one of these steps, you can always run the executable again to
install it.

## Bash

### `man`

Format and display the on-line manual pages

#### Examples

* `man man`
* `man bash`
* `man ls`

### `ls`

List all directory contents

#### Examples

* `ls`
* `ls .`
* `ls ..`

### `cd`

Change (navigate into) a directory

#### Examples

* `cd MyDir`
* `cd .`
* `cd ..`

### `touch`

Create file or change timestamp on existing file

#### Examples

* `touch .`
* `touch NewFile`

### `echo`

Print to standard output

#### Examples

* `echo "hello"`

### `cat`

Concatenate and print files

#### Examples

* `cat`
* `cat README.md`

### `mkdir`

Create a directory

#### Examples

* `mkdir MyDir`

### `cp`

Copy files

#### Examples

* `cp NewFile CopiedFile`
* `cp -r Mydir CopiedDir`

### `rm`

Remove directory entries

#### Examples

* `rm CopiedFile`
* `rm -r CopiedDir`

### Wildcards

`man bash` (Search for `Pathname Expansion`)

#### Examples

* `echo *`
* `ls *.md`
* `ls *.??`

### Redirection

#### Examples

* `echo "Hello, world" > hello.txt`
* `echo "Hello, you" >> hello.txt`

### Pipe

#### Examples

* `ls | sort`
* `cat list.txt | sort | uniq > unique.txt`
* `sort < list.txt | uniq > unique.txt`
* `sort < list.txt | tee sorted.txt | uniq`

## Make
