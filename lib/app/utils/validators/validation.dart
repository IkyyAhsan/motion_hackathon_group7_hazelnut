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

  
}