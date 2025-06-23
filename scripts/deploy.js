const hre = require("hardhat");

async function main() {
  const HelloWorld = await hre.ethers.getContractFactory("HelloWorld");
  const hello = await HelloWorld.deploy(); // No need to pass any value

  await hello.deployed();
  console.log("HelloWorld deployed to:", hello.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
