
let letVariable = "I am a let variable";
var varVariable = "I am a var variable";

console.log(typeof letVariable); // string
console.log(typeof varVariable); // string

function temp2() {
    var varVariable2 = "V0lt";
    console.log("The value under the function of var variable :", varVariable2); 
}

temp2();
// console.log("  he value Outside the function of var variable :", varVariable2);


function state() {
    var a = 20;
    if( true ) {
        let a = 30;
        console.log("Inside the block b =", a); 
    }
    // console.log("Outside the block b =", b) give error.
    console.log("Outside the block a =", a); 
}
state();


function demo() {
  console.log(a); 
  var a = 10;
  console.log(a); 
}
demo();

if (true) {
  let x = 5;
  console.log(x); // 5
}
console.log(x); 






