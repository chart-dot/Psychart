# PSYCHART

Psychain is a blockchain platform that enhances the hiring process through personality and aptitude assessments certified on the blockchain. These certifications guarantee
the accuracy of the results, allowing companies to objectively evaluate the alignment of values and goals between candidates and the organizational culture, thus improving 
the efficiency of talent selection and reducing employee churn.

## Usage 

### Built With

Avalanche C-Chain (EVM)
Solidity
JavaScript
React
Align
Foundry
Metamask



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

SUMMARIZE

We set up a Aligned ID development environment with Ethereum
We develop a simple dapp with Java Script - React that needs to store data, 
using  to connect to the blockchain.
We write a smart contract - NFT in RC721 with that guarantees the validation of the results of the Tests
We set up a L1  with Avalanche C-chain
We deploy the contract on the network 
We storage the data in Filecoin

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ID Validator

After generating the proof, you will have to find three different files:

Proof file

Image id file

Public input file

Then, you can send the proof to the Aligned network by running the following command

aligned submit \
  --proving_system Risc0 \
  --proof <proof_file_path> \
  --vm_program <method_id_file_path> \
  --public_input <pub_input_file_path> \
  --conn wss://batcher.alignedlayer.com \
  --proof_generator_addr <proof_generator_addr> \
  --rpc https://ethereum-holesky-rpc.publicnode.com \
  --batcher_addr 0x815aeCA64a974297942D2Bbf034ABEe22a38A003

  Please refer to this package's documentation and the following links for an in depth explanation:

-   [Docs](https://docs.alignedlayer.com/guides/4_generating_proofs) 
  

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Smart Contract Validator

Avalanche's C-Chain is compatible with the Ethereum Virtual Machine (EVM), making it easy to develop and deploy smart contracts in Solidity.

The following code example will show you how to send, receive and verify the Results using Avalanche blockchain : teleporter and foundry.

$ git clone /ava-labs/avalanche-starter-kit/
$ cd ../tree/main/src/0-send-receive
$ npm install
$ npm start

The smart contracts backpack can create audited smart contracts, deployment scripts and tests, of one of the following standards:

ERC721: NFT collection smart contract
ERC20: Crypto currency smart contract
ERC1155: Fungibility agnosting smart contract

Learn more on how to create, build and deploy, the smart contracts in the [Docs](https://github.com/ava-labs/avalanche-starter-kit/tree/main/src).


![User-candidate flow](https://pouch.jumpshare.com/preview/PVhNAxNOoKGi4_zJdG61zLaXnM-adPPd9axH-PetxMKnlynRl0llzw_nNNBPvzQ4Jc-9rlX5rWu8GvHQBUOlM7pd_5s3tfw7u40JkbNGMyQ)


## Storage the metadata

We will use NFt.Storage to preserve the NFT data by verifying it on the filecoin network
