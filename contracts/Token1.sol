//SPDX-License-Identifier: MIT

pragma solidity >0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract Token1 is Initializable, ERC20Upgradeable{ 

    address owner;

    function initialize() public initializer {
        __ERC20_init("Token1" , "T1");
        owner = msg.sender;
        _mint(owner, 10000 * 10 **18);
    }

    function buy(uint amountToBeBought) public payable returns(bool){
        require(msg.value >= amountToBeBought);
        transfer(msg.sender, amountToBeBought);
        return true;
    }

    function mint(address to, uint amount) public {
        require(msg.sender == owner);
        _mint(to, amount);
    }

    function burn(uint burningTokensAmount) public {
        _burn(msg.sender, burningTokensAmount);
    }



}
