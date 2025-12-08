function addElements(a, ...elements) {
    let sum = 0;
    sum += a;
    for (const element of elements) {
        sum += element;
    }

    return sum;

}

let sum = addElements(1, 2, 3, 4, 5);
console.log(sum);


