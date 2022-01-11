pragma solidity ^0.4.18;

contract lesson6{
    address public owner;
    function lesson6() public {
        owner = msg.sender;
    }

    function () public payable {
        uint value = msg.sender/2;
        owner.transfer(value);
    } 
} 