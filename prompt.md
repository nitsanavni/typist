let's write a python script
reads from stdin
prints to stdout
transforming the input with a function called `expand`

it goes through the input line by line
and for each line it checks for match with a regex for:
./path/to/file

it then replaces the match with the content of the file like this:

### File: `./path/to/file`

```
content of file
```

also, it looks for this patterns: !cmd or $(cmd)

and replaces them with the output of the command, using subprocess

we can have a separate expand for each pattern: expand_file_references, expand_shell_commands
