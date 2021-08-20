// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
// import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";



contract NftToken is ERC721URIStorage, Ownable {
    uint256 private _tokenIds;

    constructor() ERC721("NFT-Example", "NEX") {}
        

    function mintNft(address receiver, string memory _tokenURI) external onlyOwner returns (uint256) {
        _tokenIds++;

        uint256 newNftTokenId = _tokenIds;
        _mint(receiver, newNftTokenId);
        _setTokenURI(newNftTokenId, _tokenURI);

        return newNftTokenId;
    }
}




