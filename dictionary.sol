
contract Boolean {
	
	bool b;

	!false //  true
	!true // false

	false && true // false
	true && true // true

	||

	true || false // true
	false || false // false

	false == true // false
	false == false  // true

	!=

	false != true // true
	false != false // false 
}

contract Integer {

	int i; // -128 до 127
	
}

contract UnsignedInteger {

	uint i; // max 255
	uint8 i; // size 2**8 -> from 0 to 255
	uint16 i; //size 2**16
	uint24 i; //size 2**24
	uint32 i; //size 2**32
	///
	uint256 i; //size 2**256

}

contract Operators {

	2 + 2;
	2 - 2;
	2 * 2;
	2 / 1;
	2 ** 3;	// возведение в степень
	2 % 3; // остаток от деления
	myInt++;
	myInt--;
	-myint; // унарный минус (-какое-то число)
}

contract Strings {
	//strings

	// временное хранение внутри оперативной памяти компьютера
	string memory myString;

	// постоянное хранение внути блокчейна
	string storage myString;

	// address
	// 0x123abOBa...
	// 120 bit
	address myAddress;

	// mapping
	mapping (address => bool) yourName;
	yourName[/*address of wallet for example*/] = true;
}

contract functions {
	
	//  AreaOfVisibility

	// public  -- всем (контрактам и человекам)
	// private	-- только этому контракту
	// external	-- только из вне контракта
	// internal -- контракту и наследствующим контрактам

	// payable -- функции которые могут принять деньги
}