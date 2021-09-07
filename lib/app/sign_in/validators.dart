abstract class StringValidator {
  bool isValid(String value);
}

class NonEmptyStringValidator implements StringValidator {
  @override
  bool isValid(String? value) {
    if (value == null) {
      return false;
    }
    return value.isNotEmpty;
  }
}

class EmailAndPasswordValidators {
  final StringValidator emailValidator = NonEmptyStringValidator();
  final StringValidator passwordValidator = NonEmptyStringValidator();
  final StringInvalidEmailErrorText = 'Email can\`t be empth';
  final StringInvalidPasswordErrorText = 'Password can\`t be empth';
}