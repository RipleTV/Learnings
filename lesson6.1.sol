// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity ^0.8.10;

contract Parent {
    uint public Mega = 87;

    function Calc() public view virtual returns(uint){
        return Mega * 4;
    }
}

contract Child is Parent {
    function Calc() public view override(Parent) returns(uint){
        // перехватываем значение из функции которую переписываем из сохраняем в Jole
        uint Jole = super.Calc();
        return Jole / 3;
    }
}