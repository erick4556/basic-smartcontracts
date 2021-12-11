// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ControlStructure {
    uint256[] public numbers;
    string public result;

    event ConditionNotification(bool condition);

    constructor(bool condition) {
        if (condition) {
            result = "Condition true";
        } else {
            result = "Condition false";
        }

        emit ConditionNotification(condition);

        for (uint256 x = 0; x < 10; x++) {
            numbers.push(x);
        }
    }
}
