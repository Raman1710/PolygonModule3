pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Multiplier2 () {  

   //signals input
   signal input a;
   signal input b; 

   //signals from gates
   signal input x;
   signal input y;

   //final signal output
   signal output q;

   //component gates used to create custom circuit
   component _andGate = AND();
   component _notGate = NOT();
   component _orGate =  OR();

   //circuit logic
   _andGate.a <== a;
   _andGate.b <== b;
    x <== _andGate.out;

   _notGate.in <== b;
    y <== _notGate.out;

   _orGate.a <== x;
   _orGate.b <== y;
    q <== _orGate.out;
   
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

component main = Multiplier2();