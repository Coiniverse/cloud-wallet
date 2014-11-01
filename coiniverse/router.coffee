Router.configure
  layoutTemplate: 'layout'

Router.route '/', ->
	this.render 'wallet', {
		data: null
	}