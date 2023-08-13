pragma circom 2.1.4;


template Example (n) {

  signal input a[n];
  signal output out;

  signal temp[n];
  temp[0] <== a[0];

  for (var i = 1; i < n; i++) {
    temp[i] <== temp[i-1] * a[i];
  }

  out <== temp[n-1];

}

component main = Example(4);

/* INPUT = {
    "a": [3,5,6,7]
} */
