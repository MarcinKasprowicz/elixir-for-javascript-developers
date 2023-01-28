# elixir-for-javascript-developers

## Reverse a sentence

```
$ cd node
$ node
> const reverseWords = require('./reverse-words')
> reverseWords('you must unlearn what you have learned')
'learned have you what unlearn must you'
> .exit

$ cd ../elixir
$ iex -S mix
iex(1)> Reverse.reverse_words("you must unlearn what you have learned")
"learned have you unlearn must you"
```

## Read commands

```
$ cd node
$ node
> const readCommands = require('./read-commands')
> readCommands(['$ cd /', '$ ls', 'dir a', '14848514 b.txt', '8504156 c.dat'])
Go to "/" directory.
List directory contents.
  Directory "a".
  File "b.txt" with a size of 14848514.
  File "c.dat" with a size of 8504156.
I have finished my job.
> .exit

$ cd ../elixit
$ iex -S mix
iex(1)> Read.read_commands(["$ cd /", "$ ls", "dir a", "14848514 b.txt", "8504156 c.dat"])
Go to "/" directory.
List directory contents.
  Directory "a".
  File "b.txt" with a size of 14848514.
  File "c.dat" with a size of 8504156.
I have finished my job.
:ok
```