class ValidationHelpers {
  static String? checkIsNullOrEmpty(String? inputText) {
    if (inputText == null || inputText.trim().isEmpty) {
      return "Enter a value";
    }
    return null;
  }

  static String? validateEmail(String? inputText) {
    String? nullableEmail = checkIsNullOrEmpty(inputText);
    if (nullableEmail != null) {
      return nullableEmail;
    }
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(inputText!);

    if (!emailValid) {
      return 'Invalid Email';
    }
    return null;
  }
  static bool isPasswordValid(String password) {
    RegExp regExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return regExp.hasMatch(password);
  }

  static String? validatePassword(String? password) {
    String? nullablePassword = checkIsNullOrEmpty(password);
    if (nullablePassword != null) {
      return nullablePassword;
    }
    bool isValidPassword = isPasswordValid(password!);
    if(!isValidPassword){
      return "Enter a Valid Password";
    }
    return null;

}
}
