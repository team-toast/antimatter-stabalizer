pragma solidity ^0.6.0;

import "..\common\common.6\openzeppelin\contracts\token\ERC20\ERC20.sol"

contract Locker
{
    ERC20 public tokenToLock;
    uint public unlockStart;
    uint public releasePeriod;
    uint public initialBalance;
    uint public remainingBalance;

    constructor(
            ERC20 _tokenToLock,
            uint _initialBalance,
            uint _unlockStart, 
            uint _releasePeriod)
        public
    {
        tokenToLock = _tokenToLock;
        unlockStart = _unlockStart;
        releasePeriod = _releasePeriod;
    }
}