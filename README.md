# Circuit Description

This circuit template (`circuit.circom`) is designed to check whether the output `q` is the multiplication of inputs `a` and `b`. It uses custom templates for basic logic gates (`AND`, `NOT`, `OR`) to perform the required computations.

## Template `Multiplier2`

This template defines a circuit for the multiplication of two inputs, `a` and `b`, using logic gates.

### Inputs:

- `a`: The first input signal (binary)
- `b`: The second input signal (binary)

### Signals:

- `x`: Internal signal representing the output of the AND gate between `a` and `b`
- `y`: Internal signal representing the negation of signal `b`
- `q`: Output signal representing the final result of the multiplication

### Components:

- `_andGate`: The AND gate component that computes the logical AND of `a` and `b`
- `_notGate`: The NOT gate component that computes the logical NOT of `b`
- `_orGate`: The OR gate component that computes the logical OR of `x` and `y`

## Template `AND`

This template defines a basic AND gate that computes the logical AND of two input signals.

### Inputs:

- `a`: The first input signal (binary)
- `b`: The second input signal (binary)

### Signal:

- `out`: Output signal representing the result of the AND operation between `a` and `b`

## Template `NOT`

This template defines a basic NOT gate that computes the logical NOT of the input signal.

### Input:

- `in`: The input signal (binary)

### Signal:

- `out`: Output signal representing the result of the NOT operation on `in`

## Template `OR`

This template defines a basic OR gate that computes the logical OR of two input signals.

### Inputs:

- `a`: The first input signal (binary)
- `b`: The second input signal (binary)

### Signal:

- `out`: Output signal representing the result of the OR operation between `a` and `b`

# Using the Circuit with Hardhat

The `hardhat.config.ts` file is a configuration file for Hardhat, a development environment for Ethereum smart contract development. This file is used to configure the Solidity compiler and networks for deployment.

The file specifies the following:

- Solidity Compiler versions: The project is using Solidity versions 0.8.17 and 0.6.11.
- Networks: The project is set up to deploy contracts on the Mumbai network (a test network on Polygon) using Alchemy as the provider.
- Circom Configuration: The circom configuration specifies the base path for input files, the `ptau` file used for the circuit, and the list of circuits to be used in the project.

# Input Data (`input.json`)

The `input.json` file provides the input values for the circuit. It contains the following values:

- `"a": "0"`: The value for input signal `a`. (Note: The values are represented as strings here, but they are binary signals in the circuit.)
- `"b": "1"`: The value for input signal `b`.
