# PROXY CONTRACT USING HARDHAT

This project demonstrates a basic proxy use case in an upgradeable smart contract.
</p>While solidity contracts are immutable, there is still multiple ways which solidity introduces
</p> for updating contracts. In this contract we'll use "EIP-1822: Universal Upgradeable Proxy Standard (UUPS)".

<h1> Token1.sol </h1>
This is a simple contract token, which is implemented on UUPS standards.

<h1> ProxyContract.sol </h1> 
This contract is basically EIP-1822: Universal Upgradeable Proxy Standard (UUPS), we used it as a proxy contract in our contract.
