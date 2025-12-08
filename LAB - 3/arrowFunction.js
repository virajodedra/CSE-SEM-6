let temp = [ 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 ];

let square = (temp) => {
    return temp * temp;
}

for( let num of temp) {
    console.log(` Square of ${num} is : ${square(num)}`);
}