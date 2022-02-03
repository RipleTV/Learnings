// тут мы выгружаем наш контракт в сеть
// получаем адресс для нашего контракта.
 
// поключаем хардхет
const hre = require('hardhat')
const ethers = hre.ethers

async function main() {
    const [signer] = await ethers.getSigners()  // тут ↓ снизу надо указывать название контракта, а не файла
    const Deploy = await ethers.getContractFactory('Counter', signer)
    const deploy = await Deploy.deploy();
    await deploy.deployed()
    console.log(deploy.address)
}

// отладчик багов
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
// на память F...
// document.querySelector('.walletAddress').innerHTML = await signer.getAddress();