// Naked Sellers Inc. (info@nakedsellers.com)

pragma solidity ^0.4.15;

import '../NakedSale.sol';

/**
 * The NakedSale smart contract is used for selling NakedToken
 * tokens (NAKED). It does so by converting ETH received into a quantity of
 * tokens that are transferred to the contributor via the ERC20-compatible
 * transferFrom() function.
 */
contract NakedSaleMock is NakedSale {

    uint public _now;

    function NakedSaleMock(
        address ifSuccessfulSendTo,
        uint fundingGoalInEthers,
        uint fundingCapInEthers,
        uint minimumContributionInWei,
        uint start,
        uint durationInMinutes,
        uint rateNakedToEther,
        address addressOfTokenUsedAsReward
    ) NakedSale(ifSuccessfulSendTo, fundingGoalInEthers, fundingCapInEthers,
                     minimumContributionInWei, start, durationInMinutes, rateQspToEther,
                     addressOfTokenUsedAsReward){ 
        _now = start + 1;
    }

    function currentTime() constant returns (uint) {
        return _now;
    }

    event HitLine(uint key, uint val);
    function changeTime(uint _newTime) onlyOwner external {
        HitLine(123, _newTime);
        _now = _newTime;
    }
}
