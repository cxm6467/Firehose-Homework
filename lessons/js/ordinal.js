var readlineSync = require('readline-sync');
var ordinal = readlineSync.question("Enter a number:  ");
var ordinalNum = Number(ordinal);

console.log('Your number is:  ' + ordinalNum + '!');
