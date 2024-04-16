# Distributed_Ledger_Technology_hw2

## Task c: currency exchange office

### Set up instruction:

1. Copy `ExchangeOffice.sol` and `MyToken.sol` files in the `contracts` folder in [Remix](https://remix.ethereum.org/)
2. Compile `MyToken.sol`
3. Deploy `MyToken` contract with desired `initialSupply` amount
4. Compile `ExchangeOffice` contract with token address of deployed token, desired `exchangeRate` and some balance (`value` field)
5. In token approve sending some amount of tokens to the deployed exchange office address

Now everything is ready for echanging

#### Ethers to tokens:

Fill in desired amount of tokens that you want to receive and if everything is ok with amounts then you receive this tokens and balance will decrease accordingly the exchange rate.

#### Tokens to Ethers:

Fill in amount of tokens that you want to exchange and amount of Wei that you want to receive. If the amounts correspond to the eschange rate, then the amount of tokens will decrease and you receive the Wies.

### Deployed contracts:
`MyToken`: [https://sepolia.etherscan.io/tx/0xebae115a3b6d410d8ccd9b42417ed70e07989d29d01391a1295a4cec36a2704e](https://sepolia.etherscan.io/tx/0xebae115a3b6d410d8ccd9b42417ed70e07989d29d01391a1295a4cec36a2704e)

`ExchangeOffice`: [https://sepolia.etherscan.io/tx/0xe515659487d34982c44053a341bba718513788d02ca2778ff3c6ae0400e6de0a](https://sepolia.etherscan.io/tx/0xe515659487d34982c44053a341bba718513788d02ca2778ff3c6ae0400e6de0a)

Deployment was made using Remix
