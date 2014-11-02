# class Blockchain
# 	constructor: () ->
# 		create_wallet()


# 	@create_wallet: (params) ->
# 		  HTTP.call("GET", "https://blockchain.info/api/v2/create_wallet", {content:'application/x-www-form-urlencoded'},{ params: {password: "example_password", api_code: ""}})
# 		  console.log(response)

# 			# params_to = ["$password","$api_code"]  #$email
# 			# params_back = ["guid","address", "link"]

# Blockchain.new()
# console.log("I AM RUNNING CODE~!!")
	# @make_outgoing_payment: () -> 
	# "https://blockchain.info/merchant/$guid/payment?password=$main_password&second_password=$second_password&to=$address&amount=$amount&from=$from&fee=$fee&note=$note"

	# @get_recent_transaction: (address) ->
	# 		HTTP.call("GET", "http://blockchain.info/address/$#{addess}?format=json")
	# # "http://blockchain.info/tx-index/$tx_index?format=json"

	# @address: () ->
	# 	"http://blockchain.info/address/$#{example_addess}?format=json"

# example_addess = "dc6764bc65231269a65a2eddf1d571791729a90a8f59aba12e0311bc671d924b"

######################

Meteor.methods ->
	create_wallet: () ->
		  http.call("GET", "https://blockchain.info/api/v2/create_wallet", {content:'application/x-www-form-urlencoded'},{ params: {password: "example_password", api_code: ""}})
		  console.log(response)

###################


# if Meteor.isClient
#   Meteor.startup () ->
#     console.log "Client Started."

#   Meteor.call("create_wallet": ->
#     Wallet.new.set("guid", "address", "link")
#     )

# if Meteor.isServer

#   Meteor.startup () ->
#     console.log "Server Started"

#   Meteor.methods () ->
#     "create_wallet": (params) ->
#     	HTTP.call("GET", "https://blockchain.info/api/v2/create_wallet", { params: {$password: "example_password", $api_code: ""}})






