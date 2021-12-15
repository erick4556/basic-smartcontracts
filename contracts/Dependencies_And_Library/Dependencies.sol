// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Dependencies {
    function sumNumbers(uint256 num1, uint256 num2)
        public
        pure
        returns (uint256)
    {
        return SafeMath.add(num1, num2);
    }
}
