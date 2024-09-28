Here's a README file for the `AbelToken` contract:

---

# AbelToken Smart Contract

`AbelToken` is a simple ERC20-like token contract deployed on the Ethereum blockchain. This contract allows the owner to mint, transfer, and burn tokens, providing basic functionalities to manage the token supply and balance of different accounts.

## Features

- **Minting**: The owner can mint new tokens, increasing the total supply.
- **Transfers**: Users can transfer tokens between addresses.
- **Burning**: Users can burn tokens, reducing the total supply.
- **Owner-Only Access**: Only the owner can mint tokens.

## Requirements

- Solidity version: `^0.8.0`
- Ethereum environment (such as Remix, Hardhat, or Foundry)

## Contract Overview

The contract contains the following state variables:

- `owner`: The address of the contract owner.
- `name`: The name of the token, set to "AbelToken".
- `symbol`: The symbol of the token, set to "ABEL".
- `decimals`: The number of decimal places the token supports (18).
- `totalSupply`: The total supply of the tokens in circulation.
- `balances`: A mapping that tracks the balance of each address.

## Functions

### Name

```solidity
function Name() external view returns (string memory)
```

Returns the name of the token ("AbelToken").

### Symbol

```solidity
function Symbol() external view returns (string memory)
```

Returns the symbol of the token ("ABEL").

### Decimals

```solidity
function Decimals() external view returns (uint8)
```

Returns the number of decimals (18).

### TotalSupply

```solidity
function TotalSupply() external view returns (uint256)
```

Returns the total supply of the token.

### BalanceOf

```solidity
function BalanceOf(address account) external view returns (uint256)
```

Returns the balance of the specified address.

### Mint

```solidity
function Mint(uint256 amount) external onlyOwner returns (bool)
```

Allows the owner to mint new tokens, increasing the total supply. The minted tokens are added to the owner's balance.

### Transfer

```solidity
function Transfer(address recipient, uint256 amount) external returns (bool)
```

Transfers tokens from the caller's address to the recipient address.

### Burn

```solidity
function Burn(uint256 amount) external returns (bool)
```

Allows the caller to burn tokens, decreasing the total supply.

## Events

- **Transfered**: Emitted when tokens are transferred between addresses.
- **Minted**: Emitted when new tokens are minted by the owner.
- **Burned**: Emitted when tokens are burned.

## License

## This project is licensed under the MIT License
