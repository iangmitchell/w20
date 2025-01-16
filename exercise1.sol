"<<code to complete here>>"
import "@openzeppelin/contracts/token/ERC___/______.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Dog is ERC___, Ownable {
    uint256 private _nextTokenId;

    constructor(address initialOwner) ERC___("Dog", "DOG") Ownable(initialOwner) {}


    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _nextTokenId++;
	"<<code to complete here>>"
    }
}
