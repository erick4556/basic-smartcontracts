// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";
import "./Modifiers.sol";

contract Inheritance is
    Sum,
    Modifiers //La herencia se implementa por medio de "is"
{
    //Para agregarle el nombre al constructor del contrato Modifiers
    constructor(string memory newName) Modifiers(newName) {}

    //override para indicar que se esta redefiniendo la funcion que esta en la interface
    function suma(uint256 num1, uint256 num2)
        public
        view
        override
        onlyOwner
        returns (uint256)
    {
        return num1 + num2;
    }
}
