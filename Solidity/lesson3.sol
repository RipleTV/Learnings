pragma solidity ^0.4.18;

contract keyWords{
uint public oneWei = 1 wei;
uint public oneSzabo = 1 szabo;
uint public oneFinney = 1 finney;
uint public oneEther = 1 ether;

// время

uint public oneSecond = 1 seconds;
uint public oneMinute = 1 minutes;
uint public oneHours = 1 hours;
uint public oneWeek = 1 weeks;
uint public oneYear = 1 years;

// блок

bytes32 public blockHash;
address public miner;
uint public difficulty;
uint public gasLimit;
uint public time;
uint public time2;

//  транзакции

bytes public data;
uint public gas;
address public sender;
bytes4 public signature;
uint public value;

function Trx() public{
    blockHash = block.blockhash(0);
    miner = msg.sender;
    difficulty = block.difficulty;
    gasLimit = block.gaslimit;
    time = block.timestamp;
    time2 = now;

    data = msg.data;
    gas = msg.gas;
    sender = msg.sender;
    signature = msg.sig;
    value = msg.value;
}

}
