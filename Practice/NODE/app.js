var faker = require("faker");
var mysql = require("mysql");
// console.log(faker.internet.email());
// console.log(faker.date.past());


// console.log(faker.address.streetAddress());
// console.log(faker.address.city());
// console.log(faker.address.state());


// function generateAddress() { console.log(faker.address.streetAddress());
// console.log(faker.address.city());
// console.log(faker.address.state());
// }

// generateAddress();

var connection = mysql.createConnection({
	      host : 'loscalhost'
	      user  : 'root@goorm'
	      database : 'join_us'
	 
});