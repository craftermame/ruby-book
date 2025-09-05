
# Learn Ruby

My ruby learning record with 「プロを目指す人のためのRuby入門」.

## Policy

On the first term, I will put the program files directly on the repo root. As it gose, I will clarify the directory structure. So, don't warry (for me).

## Name Conventions

### snake_case

- symbols_name
- variabls_name
- methods_name
- files_name
- folder_name (directory_name)

## Tips

### There is no FUNCTION

On ruby, there is no 'function' but 'method'. A method out of the class definition are still one 'method' of 'Object' class.

### End with newline

The ruby program file should be end with a single newline.

> [!NOTE]
> Does GitHub or some thing automatically delete the end line? The line will not be appeared on the repository but on code editor.

### What does heredoc mean

Heredoc (here document) is a technical term that lets us write multiple-lined string directly on the program file. Thanks for it, we can write actual HTML syntax on the ruby file without any escapes.

### Importing internal dependencies

Use `require_relative` to import internal dependencies.

```rb
require_relative './some_file'
```

This way has following benefit.

- Making clear the file is internal or external.
- The system searches only internal files while `require` searches all of `$LOAD_PATH`.

## References

- 「プロを目指す人のためのRuby入門」
- [Ruby Style Guide](https://rubystyle.guide/)
