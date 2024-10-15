write a script in python called `typistdiff`

reads from stdin, writes to stdout
input is markdown

input is:
- first line: file path
- rest: new file content

it triggers vimdiff:
- lhs: new file content
- rhs: existing file content

