"<<code to complete here>>"
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract MyTokenURIPay is ERC721URIStorage, Ownable{
    using Counters for Counters.Counter;
    Counters.Counter private tokenIds;
    uint constant public MAX_SUPPLY = 100;
    bool internal locked;
    mapping (uint => uint) public price;
    modifier noReentrant() {
	"<<code to complete here>>"
   }
    constructor()
        ERC721("MyToken", "MTK")
        Ownable(msg.sender){}
    receive() external payable  noReentrant(){ }
    function mintNFT(address to, string memory tokenURI) public payable returns (uint256)  {
	"<<code to complete here>>"
    } 
    function setPrice(uint256 tokenId, uint _price) public   {
	"<<code to complete here>>"
    }
    function transferNFT(uint256 tokenId) public payable  {
	"<<code to complete here>>"
    }
    function burnNFT(uint256 tokenId) public   {
	"<<code to complete here>>"
    }
    function withdraw() external payable onlyOwner() {
	"<<code to complete here>>"
    }
}
