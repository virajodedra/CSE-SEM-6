class MyClass{
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }

    displayNameAndAge() {
        console.log(`Name: ${this.name}, Age: ${this.age}`);
    }
}

let obj1 = new MyClass("Volt", 25);
obj1.displayNameAndAge();


function myclass(name, age) {
    this.name = name;
    this.age = age;

    this.display = function() {
        console.log(`Name: ${this.name}, Age: ${this.age}`);
    }
}

let obj = new myclass("Viraj", 21);
let obj2 = new myclass("Harshil", 27);
obj2.display(); 