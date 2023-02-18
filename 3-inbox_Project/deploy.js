const HDWalletProvider = require('@truffle/hdwallet-provider');
const Web3 = require('web3');

const { abi, evm } = require('./compile');

provider = new HDWalletProvider(
  'REPLACE_WITH_YOUR_MNEMONIC',
  'REPLACE_WITH_YOUR_INFURA_URL'
);

const web3 = new Web3(provider);

const deploy = async () => {
  const accounts = await web3.eth.getAccounts();

  console.log('Tentando implantar a partir da conta', accounts[0]);

  const result = await new web3.eth.Contract(abi)
    .deploy({ data: evm.bytecode.object, arguments: ['Olá!'] })
    .send({ gas: '1000000', from: accounts[0] });

  console.log('Contrato implantado para', result.options.address);
  provider.engine.stop();
};
deploy();
