const hre = require('hardhat')
// const { solidity } = require('../hardhat.config')
const ethers = hre.ethers

async function main() {
    // распоковка
    const [signer] = await ethers.getSigners()
    // ищем в артифактах нужный нам контракт и указываем аккаунт кготорым подписываем
    const Transfers = await ethers.getContractFactory('Transfers', signer)
    // деплоим контракт
    const transfers = await Transfers.deploy(3)
    // ждем пока он задеплоится
    await transfers.deployed()
    // выводим адресс контракта
    console.log(transfers.address)
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });