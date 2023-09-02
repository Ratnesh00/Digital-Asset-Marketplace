// 

require('@nomicfoundation/hardhat-toolbox')

module.exports = {
  solidity: '0.8.9',
  networks: {
    sepolia: {
      url: 'https://eth-sepolia.g.alchemy.com/v2/y45UoKe6GlwABMsBpwajX72eSl2S3kaR',
      accounts: ['d773524c2a093745ce2392e38d5adb1ce4a24e3cd170df36a978f1ac89a6b5a7']
    }
  }
}