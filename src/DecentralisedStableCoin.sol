//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {ERC20, ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/*
@ Title: DecentralisedStableCoin
@ Author: Marcus Boreham
Collateral: Exogenous (ETH & BTC)
Minting: Algoritmic
Relative Stability: Anchored to USD

This contract is governed by the DSCEngine contract.
This contract is the implementation of ERC20 for the stablecoin system.
*/
contract DecentralisedStableCoin is ERC20Burnable, Ownable {
    error DecentralisedStableCoin__BalanceMustBeGreaterThanZero();
    error DecentralisedStableCoin__BurnRequestExceedsBalance();
    error DecentralisedStableCoin__NotZeroAddress();

    constructor(address initialOwner) ERC20("DecentralisedStableCoin", "DSC") Ownable(msg.sender) {}

    function burn(uint256 _amount) public override onlyOwner {
        uint256 balance = balanceOf(msg.sender);
        if (_amount <= 0) {
            revert DecentralisedStableCoin__BalanceMustBeGreaterThanZero();
        }
        if (balance < _amount) {
            revert DecentralisedStableCoin__BurnRequestExceedsBalance();
        }
        super.burn(_amount);
    }

    function mint(address _to, uint256 _amount) external onlyOwner returns (bool) {
        if (_to == address(0)) {
            revert DecentralisedStableCoin__BurnRequestExceedsBalance();
        }
        if (_amount <= 0) {
            revert DecentralisedStableCoin__BalanceMustBeGreaterThanZero();
        }
        _mint(_to, _amount);
        return true;
    }
}
