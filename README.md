# AbelToken

`AbelToken` is an ERC-20 token contract built on Solidity that implements token minting, burning, and ownership functionalities using OpenZeppelin libraries. This contract allows the owner to mint tokens and gives token holders the ability to burn their tokens.

## Features

- **Minting**: Only the contract owner can mint new tokens.
- **Burning**: Token holders can burn their tokens, reducing the total supply.
- **Ownership**: The contract has an owner who controls minting rights. Ownership can be transferred.

## Requirements

- Solidity version ^0.8.0
- OpenZeppelin Contracts (for ERC20, ERC20Burnable, and Ownable functionality)

## Installation

To use the `AbelToken` contract, you need to install the OpenZeppelin Contracts library in your project.

```bash
forge
```

## Contract Details

### Constructor

The constructor initializes the token with the following parameters:

- **Token Name**: AbelToken
- **Token Symbol**: ATK
- **Initial Owner**: The address provided during contract deployment becomes the owner of the contract.

```solidity
constructor(address initialOwner) ERC20("AbelToken", "ATK") Ownable(initialOwner) {}
```

### Functions

1. **mint**

   Mints new tokens to a specified address. Only the owner can call this function.

   ```solidity
   function mint(address to, uint256 amount) public onlyOwner
   ```

   - `to`: Address of the recipient who will receive the newly minted tokens.
   - `amount`: The number of tokens to mint.

2. **burn**

   Allows token holders to burn their tokens, which reduces the total supply.

   This functionality is inherited from `ERC20Burnable`:

   ```solidity
   function burn(uint256 amount) public
   ```

## Usage

1. **Deploying the Contract**

   Deploy the contract using a Solidity deployment framework like Remix, Truffle, or Hardhat. Pass the owner's address during deployment:

   ```solidity
   $ forge script script/Token.s.sol:TokenScript --rpc-url <your_rpc_url> --private-key <your_private_key>
   ```

2. **Minting Tokens**

   After deployment, the owner can mint tokens by calling the `mint` function:

   ```solidity
   abelToken.mint(toAddress, tokenAmount);
   ```

3. **Burning Tokens**

   Token holders can burn tokens by calling the `burn` function:

   ```solidity
   abelToken.burn(tokenAmount);
   ```

## License

This contract is licensed under the MIT License.

### Additional Notes:

- Replace `initialOwner`, `toAddress`, and `tokenAmount` with actual values when interacting with the contract.
- You can modify the token's behavior by changing its parameters or adding new functionality as needed.
