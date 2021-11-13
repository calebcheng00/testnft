pragma solidity ^0.7.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Testnft is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() public ERC721("piccAIso", "CPPN"){
        _setBaseURI("ipfs://");
    }

    function mint(address sender, string memory metadataURI) public returns (uint256) {
        _tokenIds.increment();
        uint newId = _tokenIds.current();
        _mint(sender, newId);
        _setTokenURI(newId, metadataURI);
        return newId;
    }

}
