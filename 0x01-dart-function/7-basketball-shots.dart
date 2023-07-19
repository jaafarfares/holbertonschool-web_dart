//calculate the winner of a basketball game
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  bool isKeyMissing = teamA.keys.toSet().union(teamB.keys.toSet()).length !=
      teamA.keys.toSet().intersection(teamB.keys.toSet()).length;

  if (isKeyMissing) {
    return -1;
  }

  int teamAScore = (teamA['Free throws'] ?? 0) * 1 +
      (teamA['2 pointer'] ?? 0) * 2 +
      (teamA['3 pointer'] ?? 0) * 3;

  int teamBScore = (teamB['Free throws'] ?? 0) * 1 +
      (teamB['2 pointer'] ?? 0) * 2 +
      (teamB['3 pointer'] ?? 0) * 3;

  if (teamAScore > teamBScore) {
    return 1; // Team A wins
  } else if (teamAScore < teamBScore) {
    return 2; // Team B wins
  } else {
    return 0; // It's a tie
  }
}
