Accounts.onCreateUser (options, user) ->
	user.contacts = contacts
	user.transactions = transactions
	user.balance = 0
	if options.profile
    user.profile = options.profile
	return user

Meteor.publish 'userData', () ->
  if(!this.userId)
  	return null
  Meteor.users.find {_id: this.userId}, {fields: {'contacts': 1, 'transactions': 1, 'balance': 1}}