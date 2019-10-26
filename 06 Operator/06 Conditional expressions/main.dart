main(List<String> args) {
  String getVisibility(bool isPublic) => isPublic ? 'public' : 'private'; 
  print(getVisibility(true));
  print(getVisibility(false));

  String playerName(String name) => name ?? 'Guest';
  print(playerName("Yusuke"));
  print(playerName(null));
}