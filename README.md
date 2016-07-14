# Cast Salty

A dead simple process for keeping secrets safe in git source control repos. Based on [John Resig's](http://ejohn.org/about/) excellent [blog post](http://ejohn.org/blog/keeping-passwords-in-source-control/).

### *To use in your project:*

1. Move `Makefile` into your project directories.
2. Modify line `5` in `Makefile` to reflect the path/file you want to protect. (Note: path is relative to location of the `Makefile`)
3. Add the path/file you are protecting to your `.gitignore` file.

### *Using the Makefile:*

#### Decrypt your file:  
1. `make decrypt`
2. *type password when prompted*

#### Encrypt your file:  
1. `make encrypt`  
2. *type password when prompted*

Note: Password for the example `settings.json.cast5` file is `!Q@W#E$R`

//Sam
