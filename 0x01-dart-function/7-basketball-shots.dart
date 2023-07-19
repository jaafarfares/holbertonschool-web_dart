int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var teamAScore =
      teamA['Free throws']! + teamA['2 pointer']! * 2 + teamA['3 pointer']! * 3;
  var teamBScore =
      teamB['Free throws']! + teamB['2 pointer']! * 2 + teamB['3 pointer']! * 3;

  if (teamAScore > teamBScore) return 1;
  if (teamAScore < teamBScore) return 2;
  return 0;
}
