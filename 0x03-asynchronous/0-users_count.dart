import '0-util.dart';

Future<void> usersCount() {
  return fetchUsersCount()
      .then((data) {
        print(data);
      })
      .catchError((error) {
        print(error);
      });
}
