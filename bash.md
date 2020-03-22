# Terminal Development

## Starting a Terminal

All interaction is via the keyboard, get used to it!

### Linux

1. Press `Ctrl+Alt+T`.

### macOS

1. Press `⌘+space`.
2. Search for and open `terminal`.

### Windows

I recommend [Cygwin](https://www.cygwin.com/) which you can download directly
[here](https://www.cygwin.com/setup-x86_64.exe)

1. Choose all default options.
2. When it asks you to choose a download site, pick any.
3. When it asks you to select packages, search for `gcc-g++`, navigate into
`All` -> `Devel` -> `gcc-g++` and select the latest version from the dropdown
4. Now search for `make`, navigate to `All` -> `Devel` -> `make` and select the
latest version
5. Now search `python`, navigate to `All` -> `Python`.  Select the latest
versions for `python38`, `python38-devel`, `python38-pip`,
`python38-setuptools`, and `python38-virtualenv`.

If you miss one of these steps, you can always run the executable again to
install it.

## Commands

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

### `mkdir`

Create a directory

#### Examples

* `mkdir MyDir`


### `cd`

Change (navigate into a) directory

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

Print to standard output (your screen)

#### Examples

* `echo "hello"`

### `cat`

Concatenate and print files

#### Examples

* `cat`
* `cat README.md`

### `cp`

Copy files

#### Examples

* `cp NewFile CopiedFile`
* `cp -r Mydir CopiedDir`

### `mv`

move (or rename) files

#### Examples

* `mv NewFile SameFile`

### `rm`

Remove directory entries

#### Examples

* `rm CopiedFile`
* `rm -r CopiedDir`

### `chmod`

Change file modes (user permissions)

#### Examples

* `chmod +x hello.sh`

### Other Commands

You will likely come across other commands not mentioned here.  Remember, `man`
is your friend.  Some other common commands are:

`pwd`, `ln`, `chown`, `find`, `du`, `df`, `less`, `head`, `tail`, `grep`,
`sort`, `wc`, `diff`, `pkill`, `top`, `time`, `sudo`, `alias`

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

### Productivity Tips

* `up-arrow` lets your scroll through your history of commands.
* `ctrl+r` lets you search your history.
* You can use `vim` or `emacs` to edit files from your terminal

## Bash Scripting

All of the previous commands can be run directly on the terminal, however they
can also be put into a "shell script."

#### Example

This is an example of a script that creates a new directory, creates a new
file in that directory, and adds content to the file.  This script is also
provided in the `code` directory as `bash_1.sh`

```bash
mkdir newDir
touch newFile
echo "Here is some content." > newDir/newFile
```

Note that the file may not be "executable" by default meaning you may need be
able to run the code.  There are two ways around this.

1. Make the file executable by running `chmod +x code/bash_1.sh`
2. Run the file directly in your terminal with `source code/bash_1.sh` or `.
code/bash_1.sh`

### Variables

You can store data in "variables"

#### Example

```bash
myName="Cory Nezin"
echo $myName
```

You can also store the output of commands in variables

#### Example

```bash
mydir=$(pwd)
echo $mydir
```

You can also read files into variables like this:

```
myData=$(<data/sample.txt)
echo $myData
```

You can concatenate variables as follows:

```bash
a="Cory"
b="Nezin"
c=$a$b
echo $c
```

When running a script, you can pass values at run time like this:

```bash
firstname=$1
lastname=$2
echo "Hello, first name: $firstname last name: $lastname"
```

You can find this script in `code/bash_1.sh`.  You can run it with
`./code/bash_1.sh Cory Nezin` for example.
