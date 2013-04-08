###### [Express'](http://expressjs.com/ "Express") basicAuth() as a [DocPad](http://docpad.org/ "DocPad") plugin.
Much thanks to [Andrew Sengul](http://contrastco.com/) for the great help & guidance in the #docpad IRC as usual.

### Setup

Add the protected route and user/pass info to the docpad.coffee configuration file like so:

```
docpadConfig = {

	# =================================
    # Plugin Configuration

    # Skip Unsupported Plugins
    # Set to `false` to load all plugins whether or not they are compatible with our DocPad version or not
    skipUnsupportedPlugins: false,

     # Enabled Plugins
    enabledPlugins:  # example
        # Disable the Pokemon Plugin
        # pokemon: false
        persona: false
        fileupload: false
        uploadfile: false

    # Upload Directory
    # uploadDir: './uploads'

    # Express' basicAuth
    basicAuth:
    	protectedPage: '/fileupload'
    	user: 'testUser'
    	pass: 'testPass'
```

And that's it for now! 
 