NakedSale.deployed().then(function(instance){q=instance});
NakedToken.deployed().then(function(instance){t=instance});
acc = web3.eth.accounts


contract = NakedSale.at(NakedSale.address);
var event = contract.TokenAddressEvent();
event.watch(function(err, result){ console.log(result.args) });
