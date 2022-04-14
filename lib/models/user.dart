import 'dart:convert';

class User {
  String id;
  String firstName;
  String lastName;
  String contact;
  String streetAdress;
  String imageUrl;
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.contact,
    required this.streetAdress,
    required this.imageUrl,
  });

  User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? contact,
    String? streetAdress,
    String? imageUrl,
  }) {
    return User(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      contact: contact ?? this.contact,
      streetAdress: streetAdress ?? this.streetAdress,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'firstName': firstName});
    result.addAll({'lastName': lastName});
    result.addAll({'contact': contact});
    result.addAll({'streetAdress': streetAdress});
    result.addAll({'imageUrl': imageUrl});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      contact: map['contact'] ?? '',
      streetAdress: map['streetAdress'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, contact: $contact, streetAdress: $streetAdress, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.contact == contact &&
        other.streetAdress == streetAdress &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        contact.hashCode ^
        streetAdress.hashCode ^
        imageUrl.hashCode;
  }
}
