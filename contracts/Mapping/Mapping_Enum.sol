// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Balance {
    mapping(address => uint256) public balance;

    enum State {
        Initialized,
        Finished
    }

    State public contractState;

    constructor() {
        contractState = State.Initialized;

        balance[msg.sender] = 1000;

        contractState = State.Finished;
    }
}
