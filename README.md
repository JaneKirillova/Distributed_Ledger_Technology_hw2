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