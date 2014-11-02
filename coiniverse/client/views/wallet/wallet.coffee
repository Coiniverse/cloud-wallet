Template.wallet.helpers {
	balance: ->
		Meteor.user().balance
}

Template.layout.helpers(
  header_text: "Transaction History"
)
