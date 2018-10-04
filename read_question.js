const readline = require('readline');
const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
reader.question("What is your name?", function(answer) {
    console.log(`Hello ${answer}!`);
});
console.log("Last program line");
// the purpose of this exercise is to demonstrate 
// asynchronous, as Last program line will print before 
// it logs hello ${answer} as it wont wait for the answer input