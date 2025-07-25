// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    string private message;

    constructor() {
        message = "Hello, Blockchain!";
    }

    function setMessage(string memory _message) public {
        message = _message;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function greet() public pure returns (string memory) {
        return "Hello, welcome to the Blockchain!";
    }

    // 🔄 Append text to the current message
    function appendToMessage(string memory _suffix) public {
        message = string(abi.encodePacked(message, _suffix));
    }
}


