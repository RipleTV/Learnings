// тут мы уже подключаем abi для взаимодействия в контрактом

const hre = require('hardhat')
const ethers = hre.ethers
const CounterArtifact = require('../artifacts/contracts/dapp.sol/Counter.json')

async function main() {
    const [signer] = await ethers.getSigners()
    const counterAddr = '0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512'

    const counterContract = new ethers.Contract(
        counterAddr,
        CounterArtifact.abi,
        signer
    )

    // вызываем функцию на увеличение значения
    await counterContract.increese()

    // смотрим само значение
    const value = await counterContract.value()
    console.log(value);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });