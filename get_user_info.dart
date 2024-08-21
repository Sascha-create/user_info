import "dart:io";

void main() {
  List<Map<String, dynamic>> userInfoDatabase = [
    {
      'id': 1,
      'name': 'Max Mustermann',
      'email': 'max@example.com',
      'age': 30,
    },
    {
      'id': 2,
      'name': 'Erika Musterfrau',
      'email': 'erika@example.com',
      'age': 25,
    },
    {
      'id': 3,
      'name': 'Hans Meier',
      'email': 'hans@example.com',
      'age': 40,
    },
  ];

  dynamic firstUserId = userInfoDatabase[0]["id"];
  dynamic secondtUserId = userInfoDatabase[1]["id"];
  dynamic thirdUserId = userInfoDatabase[2]["id"];

  print("Für Info die User ID von 1 bis ${userInfoDatabase.length} eingeben");

  String? idInput = stdin.readLineSync()!;

  int userInput = int.parse(idInput);

  if (userInput == firstUserId) {
    print(userInfoDatabase[--firstUserId]);
  } else if (userInput == secondtUserId) {
    print(userInfoDatabase[--secondtUserId]);
  } else if (userInput == thirdUserId) {
    print(userInfoDatabase[--thirdUserId]);
  }
}
