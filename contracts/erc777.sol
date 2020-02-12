pragma solidity ^0.6.1;

import './Ierc777.sol';

abstract contract erc77Token  is Ierc777{
    string internal name;
    string internal symbol;
    uint internal totalsupply;
    uint internal granularity;

    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _totalsupply, 
        uint _granularity
        ) 
        internal {
        name = _name;
        symbol = _symbol;
        totalsupply = _totalsupply;
        require(granularity >= 1, "must be greater than 1");
        granularity = _granularity;
        
    }
}