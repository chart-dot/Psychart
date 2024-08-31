// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.8.1/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.8.1/token/ERC721/extensions/ERC721Burnable.sol";   

import "@openzeppelin/contracts@4.8.1/access/AccessControl.sol";   
 // Importa AccessControl

contract ValidationNFTBridge is ERC721, ERC721Burnable, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE"); // Rol para mintear

    struct TestResult {
        uint256 testId;
        uint256 timestamp;
        uint256 score;
        // ... otros datos del test
    }

    mapping(uint256 => TestResult) public testResults;

    string private constant _TOKEN_NAME = "Auma Token";
    string private constant _TOKEN_SYMBOL = "AUMA";
    string private constant _TOKEN_URI = "https:/example.com/ipfs/";

    constructor() ERC721(_TOKEN_NAME, _TOKEN_SYMBOL) {
        _setupRole(MINTER_ROLE, msg.sender); // Otorgar rol de minteo al deployer
    }

    function mintNFT(uint256 tokenId, uint256 testId, uint256 score) public onlyRole(MINTER_ROLE) {
        require(_ownerOf(tokenId) == address(0), "Token already minted");
        _mint(msg.sender, tokenId);

        testResults[tokenId] = TestResult(testId, block.timestamp, score);
    }

    // ... otras funciones (mantener validación de datos, etc.)

    // ... funciones adicionales para bridge (opcional)
