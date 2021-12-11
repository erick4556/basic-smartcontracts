// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Functions {

    function sum(uint number, uint number2) public pure returns (uint){ //No esta consultando ninguna variable, osea que esta en pure, es opcional agregar pure
        // return number + number2;
        return internalSum(number, number2);
    } 

    function internalSum(uint number1, uint number2) private pure returns (uint){
        return number1 + number2;
    }

    uint private result;

    function getResult() public view returns (uint) { //Se puede definir de solo lectura "view" ya que no esta modificando variables del contracto
        return result;
    } 

} 