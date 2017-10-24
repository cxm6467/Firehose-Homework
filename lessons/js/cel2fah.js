var readlineSync = require('readline-sync');

var degrees = readlineSync.question("Enter degrees in Celsisus:  ");
//
// console.log('It is ' + degrees + '!');
var degreesNum = Number(degrees);
var degreesFahrenheit = (degreesNum - 32 ) / 1.8;
console.log('It is ' + degreesFahrenheit + ' degrees Fahrenheit!');
