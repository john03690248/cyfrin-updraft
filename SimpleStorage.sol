// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage {
    
    uint256 public myFavoriteNumber; //0

    uint256[] listOfFavoriteNumbers; 
    //  0   1   2
    // [0, 78, 90]

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person public pat = Person({favoriteNumber: 7, name: "Pat"});

    // dynamic array
    Person[] public listOfPeople; //[]

    // Johnson -> 32
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    //view, pure
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    //calldate, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        //Person memory newPerson = Person(_favoriteNumBER, _name)
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}