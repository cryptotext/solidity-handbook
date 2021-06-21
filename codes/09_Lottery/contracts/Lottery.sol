pragma solidity ^0.8.0;

contract Lottery {
    uint public constant TICKET_PRICE = 0.1 ether;

    address[] public tickets;
    address public winner;

    function buy () public payable {
        require(msg.value == TICKET_PRICE);
        tickets.push(msg.sender);
    }

    fallback() external payable {
        buy();
    }

    function drawWinner () public {
        require(winner == address(0));
        bytes32 rand = keccak256(abi.encode(block.number-1));
        winner = tickets[uint(rand) % tickets.length];
    }

    function withdrawETH () public {
        require(msg.sender == winner);
        payable(msg.sender).transfer(address(this).balance);
    }

}
