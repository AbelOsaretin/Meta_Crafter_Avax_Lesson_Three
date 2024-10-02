// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AbelToken is ERC20, ERC20Burnable, Ownable {
    constructor(
        address initialOwner
    ) ERC20("AbelToken", "ATK") Ownable(initialOwner) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 _amount) public override {
        _burn(msg.sender, _amount);
    }

    function transfer(
        address _to,
        uint256 _amount
    ) public override returns (bool) {
        transfer(_to, _amount);
    }

    function transferFrom(
        address _from,
        address _to,
        uint256 _amount
    ) public override returns (bool) {
        transferFrom(_from, _to, _amount);
    }
}
