
class LoginRequest {
  final String pin;
  final String email;

  LoginRequest({required this.pin, required this.email});

  LoginRequest.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        pin = json['pin'];

  Map<String, dynamic> toJson() => {
    'email': email,
    'pin': pin,
  };
}