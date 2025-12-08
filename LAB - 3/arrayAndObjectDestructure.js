let arr = [10, 20, 30, 40, 50];

console.log(arr[2]);

[temp, temp2] = arr;
console.log(" temp, temp2 :", temp,temp2);

[temp, temp2, , ,temp3] = arr;
console.log(" temp, temp2, temp3 :", temp,temp2,temp3);


console.log(" - - - - - -- - - - - - - - -");

let myObj = {
    name : "Volt",
    age : "21",
    college : "DU",


    greet : function() {
        console.log( `Hello from ${this.name}` )
    }
}

let {name, age} = myObj;
console.log(name, age);

myObj.greet();