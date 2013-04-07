# Export
module.exports = (BasePlugin) ->
  # Define
	class basicAuthPlugin extends BasePlugin
		# Name
		name: 'basicauth'

		config:
			protectedPage: '/fileuploads'
			user: "testUser"
			pass: "testPass"

		# Server Extend
        # Used to add our own custom routes to the server before the docpad routes are added
		serverExtend: (opts) ->
			{server} = opts
			docpad = @docpad

			# Synchronous
			auth = server.basicAuth(config.user, config.pass)

			# Synchronous Function
			auth = server.basicAuth((user, pass) ->
				user is config.user and pass is config.pass
			)

			req.app.get config.protectedPage, auth, (req, res) ->
				res.send docpad

			# Done
			@