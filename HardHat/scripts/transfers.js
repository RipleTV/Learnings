const hre = require('hardhat')
const ethers = hre.ethers
const TransfersArtifact = require('../artifacts/contracts/Transfers.sol/Transfers.json')

async function currentBalance(address, msg = '') {
    const rawBalance = await ethers.provider.getBalance(address)
    console.log(msg, ethers.utils.formatEther(rawBalance))
}

async function main() {
    // распоковка данных занчению acc1 присвоен адресс аккаунта 0, acc2 - адесс акк 1
    const [acc1, acc2] = await ethers.getSigners()
    const contractAddr = '0x5FbDB2315678afecb367f032d93F642f64180aa3'
    const transfersContract = new ethers.Contract(
        contractAddr,
        TransfersArtifact.abi,
        acc1
    )

//     const tx = {
//         to: contractAddr,
//         value: ethers.utils.parseEther('1')
//     }

//     const txSend = await acc2.sendTransaction(tx)
//     await txSend.wait()

//     await currentBalance(acc2.address, 'Account balance:')
//     await currentBalance(contractAddr, 'Contract balance:')

    // const result = await transfersContract.getTransfer(0)
    // console.log(ethers.utils.formatEther(result['amount']), result['sender'])
    const result = await transfersContract.connect(acc1).withdrawTo(acc2.address)
    console.log(result)
    await currentBalance(acc2.address, 'Account balance:')
    await currentBalance(contractAddr, 'Contract balance:')
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });