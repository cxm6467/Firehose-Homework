function sorry (){
  console.log("Say, sorry!");
}

function doProgram(){
  setTimeout(sorry, 1000);
  console.log("No!");
  console.log("OK :(");
}

doProgram();
