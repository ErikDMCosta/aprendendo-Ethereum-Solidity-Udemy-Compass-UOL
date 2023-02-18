const HDWalletProvider = require('@truffle/hdwallet-provider');
const Web3 = require('web3');
const { abi, evm } = require('./compile');

const provider = new HDWalletProvider(
  'YOUR_MNEMONIC',
  // lembre-se de mudar isso para sua própria frase!
  'YOUR_INFURA_URL'
  // lembre-se de alterar isso para seu próprio endpoint!
);

const web3 = new Web3(provider);

const deploy = async () => {
  const accounts = await web3.eth.getAccounts();

  console.log('Tentando implantar a partir da conta', accounts[0]);

  const result = await new web3.eth.Contract(abi)
    .deploy({ data: evm.bytecode.object })
    .send({ gas: '1000000', from: accounts[0] });

  console.log(JSON.stringify(abi));
  console.log('Contrato implantado para', result.options.address);
  provider.engine.stop();
};
deploy();
