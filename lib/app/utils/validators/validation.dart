class KValidation {
  // -- Empty Text Validation
  static String? validateEmptyText(String? username, String? value){
    if (value == null || value.isEmpty){
      return '$username tidak boleh kosong.';
    }
    return null;
  }

  static String? validateUsername(String? value){
    if (value == null || value.isEmpty){
      return 'Username tidak boleh kosong';
    }

    // Regular Expression for username validation
    final regExpression = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!regExpression.hasMatch(value)) {
      return 'Format username tidak valid';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password tidak boleh kosong.';
    }

    // Check for minimum password length
    if (value.length <= 6) {
      return 'Panjang Password minimal 6 karakter.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password harus mengandung setidaknya satu angka.';
    }

    return null;
  }
}