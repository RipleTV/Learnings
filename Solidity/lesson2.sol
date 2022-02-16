pragma solidity ^0.4.18;

contract Types{
    address public addr = 0x9e3d5875D03a4208aF866795DC78Aad6658D51B0;

    addr.ballance; // просмотр балланса удобная функция

    // кудаотпраляем.типотправки(сумма)
    addr.transfer(uint xxx); // в случае ошибки откатит назад
    addr.send(uint xxx); // в случае ошибки можно прописать логику на то чтоб управлять транзой

    address payable public addr2; // указывает что адресс может платить

    string public str = "Something text"; // Хранит стринг

    function changeStr(string _str) public {
        str = _str;                        // Можно поменять стринг
    }

    bytes1 до bytes32
    1 байт = 8 битом

    256 2^8

    uint[] public arrayUint;

    //push
    function addToMas(uint _elem) public{
        arrayUint.push(_elem);
    }

    //.length
    function getLength() public view returns(uint){
        return arrayUint.length;
    }

    //new
    function createAndGetMass(uint _elem1, uint _elem2, uint _elem3) public pure returns(uint[]){
        uint[] memory newMass = new uint[](3);
        newMass[0] = _elem1;
        newMass[1] = _elem2;
        newMass[2] = _elem3;
        return newMass;
    }

    mapping (uint => string) public myMap; // mpping позволяет нам присваивать значения любому числу не создавая для этого предидущие

    function addToMap(uint _key, string _value) public {
        myMap[_key] = _vlaue;
    }

    struct public Person{
        string name;
        string lastName;
        uint age;
    }

    Person [] public persons;

    function addPerson(string _name, string _lastName, uint _age) public{
        persons.push(Person({name: _name, lastName: _lastName, age: _age}))
    }

}