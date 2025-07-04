import '3-util.dart';

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();
    String name = data.split('"')[7];
    return 'Hello $name';
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    bool isValid = await checkCredentials();
    if (isValid) {
      String greetSentence = await greetUser();
      print('There is a user: true');
      return greetSentence;
    }
    print('There is a user: false');
    return 'Wrong credentials';
  } catch (err) {
    return 'error caught: $err';
  }
}
