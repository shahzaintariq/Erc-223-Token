pragma solidity ^0.6.1;

import {Ierc777} from  "./Ierc777.sol";
import {SafeMath} from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";

contract erc77Token  is Ierc777,SafeMath{
    string internal sName;
    string internal sSymbol;
    uint internal sTotalSupply;
    uint internal sGranularity;

    mapping(address => uint256) balances;

    constructor( string memory _name, string memory _symbol, uint256 _totalsupply, uint _granularity) internal {
        sName = _name;
        sSymbol = _symbol;
        sTotalSupply = _totalsupply;
        require(_granularity >= 1, "must be greater than 1");
        sGranularity = _granularity;
}

    function name() public override view returns(string memory) { return sName;}
    function symbol() public override view returns(string memory) { return sSymbol;}
    function totalSupply() public override view returns(uint256) { return sTotalSupply;}
    function granularity() public override view returns(uint256) { return sGranularity;}

    function balanceOf(address holder) public override view returns(uint256) { 
            return  balances[holder];
    }





}



