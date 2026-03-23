// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract main() {

    string public name = "main()";
    string public symbol = "& C:/Users/nikit/AppData/Local/Python/pythoncore-3.14-64/python.exe c:/Users/nikit/OneDrive/Desktop/blockchain/erc20_generator.py";
    uint8 public decimals = & C:/Users/nikit/AppData/Local/Python/pythoncore-3.14-64/python.exe c:/Users/nikit/OneDrive/Desktop/blockchain/erc20_generator_gui.py;
    uint public totalSupply;

    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);

    constructor() {
        totalSupply = & C:/Users/nikit/AppData/Local/Python/pythoncore-3.14-64/python.exe c:/Users/nikit/OneDrive/Desktop/blockchain/erc20_generator_gui.py * 10 ** uint(decimals);
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address to, uint value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance");

        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;

        emit Transfer(msg.sender, to, value);
        return true;
    }

    function approve(address spender, uint value) public returns (bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function transferFrom(address from, address to, uint value) public returns (bool) {
        require(balanceOf[from] >= value, "Insufficient balance");
        require(allowance[from][msg.sender] >= value, "Allowance exceeded");

        balanceOf[from] -= value;
        balanceOf[to] += value;
        allowance[from][msg.sender] -= value;

        emit Transfer(from, to, value);
        return true;
    }
}
