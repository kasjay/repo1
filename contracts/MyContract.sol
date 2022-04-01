pragma solidity ^0.6.0;

contract MyContract {
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple", "banana"];
    string[] public values;
    uint[][] public array2D = [ [1,2,3], [4,5,6] ];

    function addValue(string memory _value) public{
        values.push(_value);
    }
    function valueCount() public view returns (uint) {
        return values.length;
    }

    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    struct Book {
        string title;
        string author;
    }

    constructor() public {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "carl";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    function addMybook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);

    }
}