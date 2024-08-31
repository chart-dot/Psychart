// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.8.1/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.8.1/token/ERC721/extensions/ERC721Burnable.sol";   
  


contract ValidationNFTBridge is ERC721, ERC721Burnable {
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

    constructor() ERC721(_TOKEN_NAME, _TOKEN_SYMBOL) {}

    function mintNFT(uint256 tokenId, uint256 testId, uint256 score) public {
        require(_ownerOf(tokenId) == address(0), "Token already minted");
        _mint(msg.sender, tokenId);

        testResults[tokenId] = TestResult(testId, block.timestamp, score);
    }

    function getTestResult(uint256 tokenId) public view returns (TestResult memory) {
        require(_exists(tokenId), "Token does not exist");
        return testResults[tokenId];
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return _TOKEN_URI;
    }

    function baseUri() external pure returns (string memory) {
        return _TOKEN_URI;
    }

    // Funciones adicionales para bridge (opcional)
    // ... (código para interactuar con el puente)
}
