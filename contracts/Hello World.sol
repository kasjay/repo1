pragma solidity ^0.8.0;

contract HelloWorld {

    string public HelloWorld;

    constructor() public {
        HelloWorld = "HelloWorld";
    }

    function setMessage(string memory _input) public {
        HelloWorld = _input;
        }

    function getMessage() public view returns(string memory) {
        return HelloWorld;
        }
    
}