// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity ^0.8.10;

contract Parent {
    address internal owner = msg.sender;
}

// контракт Child наследует контракт Parent
contract Child is Parent {
    function getOwner() public view returns(address) {
        return(owner);        
    }
}

// очень важно устанавливать последовательность в зависимости от уровня *...is Первый (самый высокий) уровень, Второй уровень...*
contract Child2 is Parent, Child {
    function newOwner(address _new) public {
        owner = _new;        
    }
}