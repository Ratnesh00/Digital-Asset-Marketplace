// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

contract Transactions {
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message));

        emit Transfer(msg.sender, receiver, amount, message);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}