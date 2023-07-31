// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    // token details
    string public TokenName = "YASH"; 
    string public TekonID = "YSH"; 
    uint public totalSupply = 0;
    
    // mapping variable here
    mapping(address => uint) public balances;
    
    // minting token function
    function mint (address _address, uint _value) public {
        totalSupply += _value; 
        balances[_address] += _value;
    }
    
    // burning token function
    function burn (address _address, uint _value) public {
        if (balances[_address] > _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
