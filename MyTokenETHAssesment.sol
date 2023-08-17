// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    string public tokenName = "Nikunj";     // The full name of the token
    string public tokenAbbrv = "NIK" ;   // An abbreviation or symbol for the token
    uint public totalSupply = 0;  // Total supply of tokens

    mapping(address => uint) public balances; // Balances of token holders
    
    function mint(address _address, uint _value) public {
        
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public { 

        if(balances[_address] >= _value) {
        totalSupply -= _value;
        balances[_address] -= _value;
        }
    }
}
