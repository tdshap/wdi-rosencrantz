var _ = require("./node_modules/underscore")

var name = ["sean", "jeff", "neel"]

var new_names = _.map(name, function(name){

	return name.toUpperCase()
})

console.log(new_names)


var new_names2 = _.map(name, function(name){

	return name.charAt(0).toUpperCase() + name.substr(1, name.length+1)

})

console.log(new_names2)