require("@nomiclabs/hardhat-waffle");

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html
task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

const INFURA_URL = 'wss://rinkeby.infura.io/ws/v3/77eb85dceb044d478fa74ec229f17342';
const PRIVATE_KEY = '0xC4c1EE062c709B9f65b7B067a5BBA6B1d6BB227F';


/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.0",
  networks: {
    rinkeby: {
      url: INFURA_URL,
      accounts: ['0x${PRIVATE_KEY}']
    }
  }
};
