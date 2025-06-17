//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Dog is ERC721, Ownable{
  uint256 public tokenID;
  constructor()
    ERC721("Dog", "DOG")
    Ownable(msg.sender)
    {
    tokenID=1;
    }


  function mintNFT(address _to) public {
    _safeMint(_to, tokenID++);
  }

}
