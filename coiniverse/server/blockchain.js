// Generated by CoffeeScript 1.7.1
Meteor.methods(function() {
  return {
    create_wallet: function() {
      http.call("GET", "https://blockchain.info/api/v2/create_wallet", {
        content: 'application/x-www-form-urlencoded'
      }, {
        params: {
          password: "example_password",
          api_code: ""
        }
      });
      return console.log(response);
    }
  };
});