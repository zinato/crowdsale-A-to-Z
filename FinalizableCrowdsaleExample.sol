pragma solidity ^0.4.23;

import "./openzeppelin-solidity/contracts/crowdsale/distribution/FinalizableCrowdsale.sol";
import "./SimpleToken.sol";

contract FinalizableCrowdsaleExample is FinalizableCrowdsale {

    uint256 _rate = 5;
    address _wallet = msg.sender;
    ERC20 _token = new SimpleToken();
    uint256 _openingTime = now + 60;
    uint256 _closingTime = now + 60 * 3; // Sample Data, 10 min

    //constructor(uint256 _rate, address _wallet, ERC20 _token) public
    constructor() public
    Crowdsale(_rate, _wallet, _token)
    TimedCrowdsale(_openingTime, _closingTime) {

    }

    function finalization() internal {
    }

}