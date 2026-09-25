// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OPNHello {
    string public message = "Hello OPN!";

    event MessageUpdated(
        address indexed user,
        string message
    );

    function setMessage(string calldata newMessage) external {
        message = newMessage;
        emit MessageUpdated(msg.sender, newMessage);
    }
}
