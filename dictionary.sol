
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

	// external string данные могут быть полученны только из-вне контракта (очень похожий на memory)
	string calldata myString;

	// address
	// 0x123abOBa...
	// 120 bit
	address myAddress;

	// mapping
	mapping (address => bool) yourName;
	yourName[/*address of wallet for example*/] = true;
}

contract Functions {
	
	//  AreaOfVisibility

	public  -- всем (контрактам и человекам)
	private	-- только этому контракту
	external	-- только из вне контракта
	internal -- контракту и наследствующим контрактам

	payable -- функции которые могут принять деньги
}

contract Arrays {
	// типДанных[размер] название; 

	// массив на 10 элементов без знака
	uint[10] items;
	uint[10][3] mItems; // двумерный массив
	// WARNING: двумерные массивы читаются задом на перед
	// Uint[10][3] это массив с длиной 3 для сторк и 10 для столбцов

	// массив с бесконечнм количеством значений без знаков
	uint[] infinityItems;
	// методы для динамического массива
	// добавить значение в конец массива
	infinityItems.push(1); // ==> items[0] = [1]
	infinityItems.pop(); // вытащить и удалить последний эллемент массива

	function sample() public {
		//название[индекс] = значение;
		items[0] = 12;
		items[1] = 100;
		mItems[0] = [1, 2, 3];

		//получить значение как и везде:
		items[1];
		//считать длинну массива
		items.length;

		//создать временный массив
		uint[] memory tempItems = new uint [](7);
	//тип данных хранения название = ? данных (размер массива)
	}
}

contract Loops {
	funtion starter() public {
		for(uint i = 0; i < items.length; i++) {
			console.log(items[i]);
		}
	}
}

contract Enum {
	//enum Название {тип данных}
	enum Statuses {Unpaid, Paid, Shipped};
	// Создает тип данных со значениями в скобочках
	// присваиваем переменной тип Statuses
	Statuses status;

	function paid() {
		status = Statuses.Paid;
	}

	function ship() {
		if(status == Statuses.Paid) {
			// some code...
		}
		status = Statuses.Shipped;
	}

}

