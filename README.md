## DEFI Stablecoin

### Features

1. (Relative stability) Anchored to USD.
2. Stability Mechanism (Minting/Burning): Algorithmic (Decentralised).
3. Collateral: Exogenous (Crypto- wETH & wBTC).
4. Chainlink Price Feed.
5. Functionality for exchanging wETH & wBTC -> $.
6. Limit minting to entities with required collateral.

### Dependancies
chainlink-brownie-contracts v0.6.1
```shell
$ forge install smartcontractkit/chainlink-brownie-contracts@v0.6.1
```

openzeppelin-contracts v5.4.0
```shell
$ forge install OpenZeppelin/openzeppelin-contracts@v5.4.0
```

forge-std
```shell
$ forge install foundry-rs/forge-std@v1.11.0
```


## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
