"<< code to complete here>>"
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
"<< code to complete here>>"

contract MyToken is ERC721{
"<< code to complete here>>"
    constructor()
        ERC721("MyToken", "MTK")
    {}

    function mintNFT(address to) public  returns (uint256)  {
	"<< modify code here >>"
        uint256 tokenId = nextTokenId++;
        _mint(to, tokenId);
        return (nextTokenId);
    } 
}
