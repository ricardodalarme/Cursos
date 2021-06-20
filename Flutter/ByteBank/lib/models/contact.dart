class Contact {
  int? id;
  String? name;
  int? accountNumber;

  Contact(
    this.id,
    this.name,
    this.accountNumber,
  );

  @override
  String toString() {
    return 'Contact{name: $name, accountNumber: $accountNumber}';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name:': name,
      'account_number': accountNumber,
    };
  }

  Contact.fromMap(Map data) {
    name = data['name'];
    accountNumber = data['account_number'];
  }
}
