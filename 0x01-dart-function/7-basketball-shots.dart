int whoWins(Map<String, int> teamA, Map<String, int> teamB){
  var teamAScore = teamA['Free throws']! * 1 + teamA['2 pointer']! * 2 + teamA['3 pointer']! * 3;
  var teamBScore = teamB['Free throws']! * 1 + teamB['2 pointer']! * 2 + teamB['3 pointer']! * 3;

  if (teamAScore > teamBScore) {
    return 1;
  } else if (teamAScore < teamBScore) {
    return 2;
  } else {
    return 0;
  }
}