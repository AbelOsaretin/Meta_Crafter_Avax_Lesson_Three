// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AbelToken {
    address owner;
    string name = "AbelToken";
    string symbol = "ABEL";
    uint8 decimals = 18;
    uint256 totalSupply;
    mapping(address => uint256) balances;

    constructor(address _owner) {
        owner = _owner;
    }

    event Transfered(address indexed from, address indexed to, uint256 value);
    event Burned(address indexed from, uint256 value);
    event Minted(address indexed to, uint256 value);

    modifier onlyOwner() {
        require(msg.sender == owner, "only owner can call this function");
        _;
    }

    function Name() external view returns (string memory) {
        return name;
    }

    function Symbol() external view returns (string memory) {
        return symbol;
    }

    function Decimals() external view returns (uint8) {
        return decimals;
    }

    function TotalSupply() external view returns (uint256) {
        return totalSupply;
    }

    function BalanceOf(address account) external view returns (uint256) {
        return balances[account];
    }

    function Mint(uint256 amount) external onlyOwner returns (bool) {
        totalSupply += amount;
        balances[msg.sender] += amount;

        emit Minted(msg.sender, amount);

        return true;
    }

    function Transfer(
        address recipient,
        uint256 amount
    ) external returns (bool) {
        balances[msg.sender] -= amount;
        balances[recipient] += amount;

        emit Transfered(msg.sender, recipient, amount);

        return true;
    }

    function Burn(uint256 amount) external returns (bool) {
        balances[msg.sender] -= amount;
        totalSupply -= amount;

        emit Burned(msg.sender, amount);

        return true;
    }
}
