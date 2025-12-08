//callback 

function fetchData() {
    setTimeout(() => {
        const data = { name: "John", age: 30 };
        displayData(data);
    }, 2000);
}
function displayData(data) {
    console.log("Fetched Data:", data);
}


fetchData();

// callback function
function processData(data, callback) {
    const processedData = data.toUpperCase();
    callback(processedData);
}
processData("hello world", function(result) {
    console.log("Processed Data:", result);
});

processData("JavaScript is fun", function(result) {
    console.log("Processed Data:", result);
});


function greet(name, callback) {
    console.log("Hello " + name);
    callback();   // calling the callback function
}

function afterGreet() {
    console.log("Welcome to JavaScript!");
}

greet("Vir", afterGreet);
