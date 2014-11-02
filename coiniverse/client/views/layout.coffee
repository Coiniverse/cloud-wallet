Template.header.helpers {
	header_text: () ->
		if Router.current().route.getName() == 'wallet'
			'Your History'
		else if Router.current().route.getName() == 'contacts'
			'Your Contacts'
}