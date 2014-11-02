Router.configure
  layoutTemplate: 'layout'

Router.route '/', ->
	this.render 'wallet', {
		data: null
	}

Router.route '/wallet', ->
	this.render 'wallet', {
		data: null
	}

Router.route '/contacts', ->
	this.render 'contacts', {
		data: null
	}

Router.route '/transactions', ->
	this.render 'transactions', {
		data: null
	}