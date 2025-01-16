"<<code to complete here>>"
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyTokenURI is ERC721URIStorage{
    using Counters for Counters.Counter;
    Counters.Counter private tokenIds;
    constructor()
        ERC721("MyToken", "MTK")
    {}

    function mintNFT(address to, string memory tokenURI) public  returns (uint256)  {
	"<< code to complete here >>"
   } 
}
