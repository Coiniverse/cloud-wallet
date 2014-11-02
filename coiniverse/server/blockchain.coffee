class Blockchain
	api = ""
	constructor: () ->
		api = "6898f428-3eb7-4f63-8b82-42476eff1bcc"

	create_wallet: (password) ->
		HTTP.post "https://blockchain.info/api/v2/create_wallet?password=#{password}&api_code=#{api}"

	get_balance: (address) ->
		HTTP.get "http://blockchain.info/address/#{address}?format=json"

@blockchain = new Blockchain