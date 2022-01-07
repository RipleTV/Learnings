pragma solidity ^0.4.18;

contract IntAndUint{
	int256 a = -45;
	uint b = 150;

	function plus(int256 x) public view returns(int256){
		return a + x;
	}

	function plus_u(uint8 x) public view returns(uint8){
		b + x;
	}

	function minus(int256 x) public view returns(int256){
		return a - x;
	}

	function minus_u(uint8 x) public view returns(uint8){
		b - x;
	}

	function mul(int256 x) public view returns(int256){
		return a * x;
	}

	function mul_u(uint8 x) public view returns(uint8){
		b * x;
	}

	function dev(int256 x) public view returns(int256){
		return a / x;
	}

	function dev_u(uint8 x) public view returns(uint8){
		b / x;
	}

	function mod(int256 x) public view returns(int256){
		return a % x;
	}

	function mod_u(uint8 x) public view returns(uint8){
		b % x;
	}
	
	function setA(int256 _a) public {
		a = _a;
	}
	function setB(uint8 _b) public {
		b = _b;
	}




}