// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Recepcion {
    mapping(address => uint256) balances;
    uint256 public saldoEnviado;

    receive() external payable {
        //receive obligatoriamente tiene que ser external
        balances[msg.sender] += msg.value;
    }

    fallback() external payable {}

    function recibirSaldo(uint256 numero) public payable {
        saldoEnviado = msg.value;

        uint256 monto = numero;
    }
}
