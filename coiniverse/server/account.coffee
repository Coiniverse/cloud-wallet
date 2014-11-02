Accounts.onCreateUser (options, user) ->
	user.contacts = contacts
	user.transactions = transactions 

	wallet_response = blockchain.create_wallet user._id
	wallet_data = wallet_response.data

	user.address = wallet_data.address
	user.guid = wallet_data.guid
	user.balance = blockchain.get_balance(user.address).data.final_balance

	console.log user.guid, '---->', user.address

	if options.profile
    user.profile = options.profile
	return user

Meteor.publish 'userData', () ->
  if(!this.userId)
  	return null
  Meteor.users.find {}, {fields: {'contacts': 1, 'transactions': 1, 'balance': 1}}