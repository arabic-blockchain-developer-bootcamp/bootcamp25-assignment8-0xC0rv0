// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// make this contract inherits from: ERC721URIStorage contract
contract Assignment8 is ERC721URIStorage, Ownable(msg.sender) {
    // declare a private uint called _tokenIdCounter
    uint private _tokenIdCounter;

    // pass name and symbol of the nft token collection
    constructor() ERC721("C0rv0 NFT", "CRV") {
        // initialize _tokenIdCounter to 0
    }

    // make this function visibility: external
    // pass string json uri parameter
    // restrict this function to be called only by the owner
    // Hint: You can use OpenZeppelin Ownable contract imported above

    function mintNFT(string memory jsonURI) public onlyOwner returns (uint256) {
        // call _mint to mint a new nft to the function caller
        uint256 tokenId = _tokenIdCounter;
        _mint(msg.sender, tokenId);
        _setTokenURI(tokenId, jsonURI);
        _tokenIdCounter++;
        return tokenId;
        // set token uri to the token id using _setTokenURI

        // increment token id counter
    }
}

// 0xAf4c9a4BEde11d4092F3988168F69b2CeC289F34
