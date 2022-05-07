pragma solidity ^0.8.0;


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
	// 160 bit = 20 Байт
	address myAddress;

	// mapping
	// массив в которм мы можем присваивать булевые значения для аддресов
	// mapping (первый тип => тип который мы присваиваем первому) название
	mapping (address => bool) yourName;
	yourName[/*address of wallet for example*/] = true;
}

contract Functions {
	
	//  AreaOfVisibility

	public  -- всем (контрактам и человекам)
	private	-- только этому контракту
	external	-- только из вне контракта
	internal -- контракту и наследствующим контрактам

	// Modifyers

	payable -- функции которые могут принять деньги
	view -- фунуция позволяет считывать данные не подифицируя из (бесплатаня)
	pure -- функция позволяет работать с елементом кода, но не позволяет считывать данные с блокчейна (бесплатная) 

	virtual -- функция позволяет переопределять себя в потомках
	override -- функция для переписи в потомках функций virtual.
}

contract Arrays {
	// типДанных[размер] название; 

	// массив на 10 элементов без знака
	uint[10] items;
	uint[10][3] mItems; // двумерный массив
	// WARNING: двумерные массивы читаются задом на перед
	// Uint[10][3] это массив с длиной 3 для сторк и 10 для столбцов

	// так выглядит заполнение двухмерного массива mItems
	mItems = [
		[1,2,3,4,5],
		[2,4,6,8,0],
		[1,3,5,7,8]
	]

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
	// Проще говоря это некий список, кортеж из предопределенных значений 
	// которые мы можем присваивать переменным

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

contract Struct {
	// структура с {елементами}
	struct Payment {
		uint ammount;
		uint timestamp;
	}

	struct Balance {
		uint totalBalance;
		mapping (uint => Payment) payments;
	}

	// массив payments из структуры Payment c типом public
	Payment[] public payments;

	function getData() public payable {
		// структура memory название = Структура(Данные для структуры)
		Payment memory payment = Payment(msg.value, block.timestamp);
		//засовываем новый платеж в массив
		payments.push(payment);
	}
}

contract Super {

	super.название функции -- поднимается выше по иерархии на один елемент и получает, условно, функцию из родительского контракта. 

}

contract Enum {
	// Енум нужен для того чтобы создать свой тип данных
	// Первое значение будет выставляться по стандарту
	enum Status { Paid, Deliverd, Received }
	Status public currentStatus;

	function paid() public {
		currentStatus = Status.Paid;
	}
	// return 0

	function delivered() public {
		currentStatus = Status.Deliverd;
	}
	// return 1
}

contract Bytes {
	// Байтовые массивы
	// Можем записывать строки но они будут определяться как последовательность байт
	bytes32 public myVar = "test"; 
	// Минимальная размерность 1 байт = 8 бит
	//  от 1 --> до 32 Байтов\
	// 32 * 8 = 256 бит
	// return 0x7465737400000000000000000000000000000000000000000000000000000000

	// Можем делать динамические массивы
	bytes public myDynVar = "test";
	// return 0x74657374

	bytes public myRusDynVar = unicode"Юникод нужен для кирилицы"
	// Length
	function lengthSize() public {
		return myDynVar.length // return 47
	}
} 
