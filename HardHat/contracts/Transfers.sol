// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity ^0.8.0;

contract Transfers {
    struct Transfer {
        uint amount;
        uint timestamp;
        address sender;
    }

    Transfer[] transfers;

    address owner;
    uint8 maxTransfers;
    uint8 currentTransfers;

    constructor(uint8 _maxTransfers) {
        owner = msg.sender;
        maxTransfers = _maxTransfers;
    }

    function getTransfer(uint _index) public view returns(Transfer memory) {
        require(_index < transfers.length, "Can't find this transfer. Bruh...");
        
        return transfers[_index];
    }

    modifier requireOwner() {
        require(owner == msg.sender, "Not an owner");
        _;
    }

    function withdrawTo(address payable _to) public requireOwner {
        _to.transfer(address(this).balance);        
    }

    receive() external payable {
        if(currentTransfers >= maxTransfers) {
            revert("Cannot accept more transfers.");
        }

        Transfer memory newTransfer = Transfer(msg.value, block.timestamp, msg.sender);

        transfers.push(newTransfer);
        currentTransfers++; 
    }

}