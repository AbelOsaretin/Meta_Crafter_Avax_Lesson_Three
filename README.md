# AbelToken Smart Contract

## Overview

The `AbelToken` contract is an ERC20-compliant token that incorporates additional functionality like token minting and burning. This contract also leverages OpenZeppelin’s `Ownable` to restrict minting capabilities to the contract owner. The `AbelToken` can be used as a standard fungible token with the ability to mint new tokens, burn existing ones, and transfer tokens between addresses.

### Features:

- ERC20 token standard compliant.
- Minting functionality, restricted to the contract owner.
- Burning functionality, allowing users to destroy tokens.
- Ownership control using the `Ownable` pattern.

## Contract Details

### Inheritance

This contract inherits the following from OpenZeppelin:

1. **ERC20**: Implements the ERC20 standard.
2. **ERC20Burnable**: Allows token holders to burn (destroy) their tokens.
3. **Ownable**: Restricts certain functions to the contract owner (for example, minting).

### Constructor

```solidity
constructor(address initialOwner)
```

- **Parameters**: `initialOwner` is the address that will be the owner of the contract.
- The constructor initializes the token with a name (`AbelToken`), a symbol (`ATK`), and sets the initial owner of the contract.

### Functions

#### `mint`

```solidity
function mint(address to, uint256 amount) public onlyOwner
```

- **Description**: This function allows the contract owner to mint new tokens.
- **Parameters**:
  - `to`: The address that will receive the minted tokens.
  - `amount`: The number of tokens to mint.
- **Access Control**: Only the contract owner can call this function.

#### `burn`

```solidity
function burn(uint256 amount) public override
```

- **Description**: Allows any token holder to burn their own tokens, effectively reducing the total supply.
- **Parameters**:
  - `amount`: The number of tokens to burn.

#### `transfer`

```solidity
function transfer(address to, uint256 amount) public override returns (bool)
```

- **Description**: Transfers tokens from the caller's account to another account.
- **Parameters**:
  - `to`: The recipient of the tokens.
  - `amount`: The number of tokens to transfer.

#### `transferFrom`

```solidity
function transferFrom(address from, address to, uint256 amount) public override returns (bool)
```

- **Description**: Allows the caller to transfer tokens from a specified address to another.
- **Parameters**:
  - `from`: The address from which the tokens will be transferred.
  - `to`: The recipient of the tokens.
  - `amount`: The number of tokens to transfer.

## License

This project is licensed under the MIT License.
