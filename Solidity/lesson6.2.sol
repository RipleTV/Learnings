// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity ^0.8.10;

contract Parent {
    uint public value;
    // при разворачивании контракта будет запрос числа который возьмет себе _input
    constructor(uint _input) {
        value = _input;
    }
}
// что самое прикольное мы это значение можем вводить в наследовании
contract Child is Parent(4) {
    function bobaCalc() public view returns(uint) {
        return value * 6;
    }
}