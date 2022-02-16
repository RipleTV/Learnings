// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity ^0.8.10;

contract Parent {
    uint public bell;
    constructor(uint _input) {
        bell = _input;
    }    
}

contract Child is Parent {
    uint public childBell;
    constructor(uint _input) Parent(_input) {
        childBell = _input;
    }
}