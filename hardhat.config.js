require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();
require("@nomiclabs/hardhat-etherscan");

module.exports = {
  solidity: {
    compilers:[
      {
        version: "0.8.9"
      },
      {
        version: "0.8.19"
      }
    ]
  },

  networks:{
    mumbai: {
      url: "https://polygon-mumbai.g.alchemy.com/v2/X1H7etINPr6jELA9HL7ofrvMHGnyhBcU",
      accounts: [process.env.PRIVATE_KEY]
    }
  },

  etherscan: {
    apiKey: process.env.POLYGONSCAN_API_KEY
  }

};
