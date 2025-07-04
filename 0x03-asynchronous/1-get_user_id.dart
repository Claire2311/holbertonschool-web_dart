import '1-util.dart';

Future<String> getUserId() {
  return fetchUserData()
      .then((data) {
        return data.split('"')[3];
      })
      .catchError((err) {
        print(err);
      });
}
