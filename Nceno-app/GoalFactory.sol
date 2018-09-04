contract GoalFactory {
	// index of created contracts
  address[] public goals;

  // useful to know the row count in contracts index
  function getGoalCount() 
    public
    constant
    returns(uint goalCount)
  {
    return goals.length;
  }

  // deploy a new contract
  function newGoal()
    public
    returns(address newGoal)
  {
    Goal g = new Goal();
    contracts.push(g);
    return g;
  }
}