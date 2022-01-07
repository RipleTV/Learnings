pragma solidity ^0.4.18;

contract lesson7pres{

    function func(){

        require(msg.value > 0, "you sent 0 eth");
        ...
        ....
        ...
        ..
        assert(msh.value > 0);

        if(...){
            ..
            ..
            .
            if(...){
                } else {
                    revert();
                }
            }
        }
    }
}

contract lesson7{ 

    function sendHalf(address _addr) public payable{
        require(msg.value%2 == 0);
        uint balanceBeforeTransfer = address(this).balance;
        _addr.transfer(msg.value/2);

        assert(address(this).balance == balanceBeforeTransfer - msg.value/2);
    }

        function sendHalfToOwner(address _addr) public payable{
            uint balanceBeforeTransfer = address(this).balance;
            owner.transfer(msg.value/2);

        assert(address(this).balance == balanceBeforeTransfer - msg.value/2);
        }
        
        modifier onlyEvenNumber(){
            require(msg.value%2 == 0);
            _;
        }
}