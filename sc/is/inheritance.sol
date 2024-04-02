pragma solidity >=0.4.22 <0.6.0;

// Defining contract
contract parent{
	uint internal sum;
		
	function setValue() external {
		uint a = 10;
		uint b = 20;
		sum = a + b;
	}
}
contract child is parent{

}
// Defining calling contract
contract caller {
    // Creating child contract object
	child cc = new child();
	
	// Defining function to call
	// setValue and getValue functions
	function testInheritance() public returns (uint) {
		cc.setValue();
		return cc.getValue();
	}
}