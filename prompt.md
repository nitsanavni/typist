write a script in python called `parsetypistresponse`

reads from stdin, writes to stdout
input is markdown

with sections likes this:

### File: `./example_script.py`

```python
def greet_user(name):
    print(f"Hello, {name}! Welcome to the Python script example.")


if __name__ == "__main__":
    user_name = input("Enter your name: ")
    greet_user(user_name)
```


for each such section, the output is:
- first line: file path
- rest: file content

seprator line between sections: `---`

