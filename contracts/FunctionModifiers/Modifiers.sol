// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Modifiers {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function sum(uint256 number, uint256 number2)
        public
        view
        onlyOwner
        returns (uint256)
    {
        return number + number2;
    }

    modifier onlyOwner() {
        /*  if(msg.sender != owner){
            revert();
        } */
        require(msg.sender == owner, "Only owner can sum");
        _;
    }
}
