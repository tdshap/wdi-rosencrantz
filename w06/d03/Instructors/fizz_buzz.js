var n = 0;

var say = function(str) {
  console.log(str);
};

while (n <= 100) {

  if (n % 3 == 0 && n % 5 == 0) {
    console.log("FizzBuzz");
  } else if (n % 3 == 0) {
    console.log("Fizz");
  } else if (n % 5 == 0) {
    console.log("Buzz"); 
  } else {
    console.log(n);
  };

  n = n + 1;
};

