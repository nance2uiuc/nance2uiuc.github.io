pragma solidity ^0.4.18;

contract Goal {

  //constants and params
	uint hrHours = 0;
	uint beginAt = 0;
	uint stake = 0;
	uint fitbitID = 0;
	uint creationTime = now;
  bool confirmed = false;

  //setter function for a goal. goal = (stake, time, begin, end) and is accessible until the contract is confirmed
  function setGoal (uint _stake, uint _hrHours, uint _beginAt, uint _fitbitID) public whileAvailable {
    stake = _stake;
    hrHours = _hrHours;
    beginAt = _beginAt;
    fitbitID = _fitbitID;
  }
  //getter function for a goal.
  function getGoal () public constant returns (uint, uint, uint, uint){
    return(stake, hrHours, beginAt, fitbitID);
  }

  //locks the contract. Cannot be undone!
	//function confirm() public {
     // confirmed = true;
  //	}

  //keeps the setter open until the contract is closed (i.e. confirmed)
  modifier whileAvailable() {
    require(confirmed == false);
  	_;
  }
}  