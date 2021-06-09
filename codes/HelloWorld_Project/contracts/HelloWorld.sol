pragma solidity ^0.5.16;

contract HelloWorld {
    string message = "Hello, World!";

    function changeMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
