var readlineSync = require('readline-sync');
var input = readlineSync.question("How many digits of FooBar shall I produce: ");

// console.log(input);

for(var iteration = 1; iteration <= Number(input); iteration ++){
  if ((iteration % 3 === 0)&&(iteration % 5 === 0)) {
    console.log("foobar");
  }
  else if (iteration % 3 === 0){
    console.log("foo");
  }
  else if (iteration % 5 === 0) {
    console.log("bar");
  }

  else {
    console.log(iteration);
  }
}
