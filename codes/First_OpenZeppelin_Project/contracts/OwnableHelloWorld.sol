pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract OwnableHelloWorld is Ownable{
    string public message = "Hello, World!";
    string public OwnableMessage = "Ownable Message";

    function changeMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function changeOwnableMessage(string memory newOwnableMessage) public {
        OwnableMessage = newOwnableMessage;
    }

    function getOwnableMessage() public view onlyOwner returns (string memory) {
        return OwnableMessage;
    }

}
