// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// Sachin Vishwakarma
// [2019140066 - BEIT]
contract SachinVishwakarma {
    address owner;
    uint256 ownerBal;

    constructor() {
        owner = msg.sender;
        ownerBal = 10000;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "Only Owner can own this contract");
        _;
    }

    function spendMoney(uint256 money)
        public
        onlyOwner
        returns (string memory, uint256)
    {
        if (money > ownerBal) {
            return ("You have Insufficient Money ", ownerBal);
        }

        ownerBal = ownerBal - money;
        return ("Remaining Balance is ", ownerBal);
    }
}
