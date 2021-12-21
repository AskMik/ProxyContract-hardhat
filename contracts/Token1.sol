//SPDX-License-Identifier: MIT

pragma solidity >0.8.0;

import 'hardhat/console.sol';

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract Token1 is Initializable, ERC20Upgradeable, UUPSUpgradeable{ 

    address owner;

    function initialize() public initializer {
        __ERC20_init("Token1" , "T1");
        owner = msg.sender;
        _mint(owner, 10000 * 10 **18);
    }

    function buy(uint amountToBeBought) public returns(bool){
        require(msg.value >= amountToBeBought);
        console.log('Sender balance is token', msg.value);
        console.log('Trying to send tokens to', msg.sender);
        transfer(msg.sender, amountToBeBought);
    }

    function mint(address to, uint amount) public {
        require(msg.sender == owner1);
        _mint(to, amount);
    }

    function burn(uint burningTokensAmount) public {
        _burn(msg.sender, burningTokensAmount);
    }

}