contract Cat is ERC721, Ownable{
  uint256 public tokenID;
  mapping (uint256 => uint256) public priceList;
  bool internal locked;
  constructor()
    ERC721("Cat", "CAT")
    Ownable(msg.sender)
    {
    tokenID=1;
    }

  function mintNFT(address _to) public {
	<<insert code here>>
  }

  function setPrice(uint256 _tokenID, uint256 _price) public  {
	<<insert code here>>
  }

  function getPrice(uint256 _tId) public view returns(uint256){
    return(priceList[_tId]);
  }

  function burnNFT(uint256 _tokenID) public {
	<<insert code here>>	
  }
 function transferNFTbyValue(uint256 _tokenID) public payable{
    uint256 _amount = msg.value;
    require(_amount == priceList[_tokenID], "Enter correct amount");
    require(_msgSender().balance >= _amount, "insufficient funds");
    address _owner = payable (ownerOf(_tokenID));
    (bool sent,) = _owner.call{value: _amount}("");
    require(sent, "Failed to send Ether");
    safeTransferFrom(_owner, _msgSender(), _tokenID);
  }
}
