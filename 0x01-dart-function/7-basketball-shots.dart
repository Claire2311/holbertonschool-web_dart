int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  Map<String, int> typeOfPoints = {
    'Free throws': 1,
    '2 pointers': 2,
    '3 pointers': 3,
  };

  int scoreTeamA = 0;
  int scoreTeamB = 0;

  teamA.forEach((k, v) => scoreTeamA += v * (typeOfPoints[k] ?? 0));
  teamB.forEach((k, v) => scoreTeamB += v * (typeOfPoints[k] ?? 0));

  if (scoreTeamA > scoreTeamB) {
    return 1;
  } else if (scoreTeamA < scoreTeamB) {
    return 2;
  } else {
    return 0;
  }
}
