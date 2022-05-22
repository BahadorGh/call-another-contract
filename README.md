# call-another-contract

## Step 1. Create new folder named: sample-dapp(or clone this repo)
Inside sample-dapp project, follow below steps:

`npm init -y` (optional)
`truffle init` ( if you don't have truffle installed, then can use `npm i truffle` )

- run your blockchain(maybe ganache, ganache-cli, testnet, etc)

`truffle compile`
`truffle migrate`

## Step 2. Now you can start interacting with contracts(for example in truffle console) >
- open a new terminal(if you are using an IDE, like VSCode)
- enter to `truffle console` (to use blockchains like ganache) or `truffle develop` (to use truffle's built-in blockchain)
- a sample interaction could be as below:

```
let instance = await ContactCall.deployed()
instance.makeNewContact("sample name", "sample number")
instance.getContactInfo(1)
```

### Todo:
- [ ] Create UI
  - [ ] Connect to UI
