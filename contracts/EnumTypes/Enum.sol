// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Enum {
    //Solo va tener dos valores active o inactive
    enum State {
        Active,
        Inactive
    }

    State public state = State.Inactive;

    function changeState(State newState) public {
        state = newState;
    }
}
