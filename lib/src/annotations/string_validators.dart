import 'package:class_validator/src/annotations/base_validator.dart';
import 'package:validators/validators.dart' as validator;
import 'package:validators/sanitizers.dart' as sanitizer;

class Contains implements Validator {
  String what;

  Contains(this.what);

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.contains(field, what);
    }
    return false;
  }
}

class NotContains implements Validator {
  String what;

  NotContains(this.what);

  @override
  bool validate(object, field) {
    if (field is String) {
      return !validator.contains(field, what);
    }
    return false;
  }
}

class IsAlphabetic implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isAlpha(field);
    }
    return false;
  }
}

class IsAlphanumeric implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isAlphanumeric(field);
    }
    return false;
  }
}

class IsAscii implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isAscii(field);
    }
    return false;
  }
}

class IsBase64 implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isBase64(field);
    }
    return false;
  }
}

class IsCreditCard implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isCreditCard(field);
    }
    return false;
  }
}

class IsEmail implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isEmail(field);
    }
    return false;
  }
}

class IsFullyQualifiedDomainName implements Validator {
  bool requireTld;
  bool allowUnderscores;

  IsFullyQualifiedDomainName({this.requireTld = true, this.allowUnderscores = false});

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isFQDN(field, requireTld: requireTld, allowUnderscores: allowUnderscores);
    }
    return false;
  }
}

class HasFullWidth implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isFullWidth(field);
    }
    return false;
  }
}

class HasHalfWidth implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isHalfWidth(field);
    }
    return false;
  }
}

class IsHexColor implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isHexColor(field);
    }
    return false;
  }
}

class IsHexadecimalNumber implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isHexadecimal(field);
    }
    return false;
  }
}

class IsIP implements Validator {
  int v;

  IsIP({this.v});
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isIP(field, v);
    }
    return false;
  }
}

class IsISBN implements Validator {
  int v;

  IsISBN({this.v});

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isISBN(field, v);
    }
    return false;
  }
}

class IsJson implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isJSON(field);
    }
    return false;
  }
}

class IsLowercase implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isLowercase(field);
    }
    return false;
  }
}

class IsMongoId implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isMongoId(field);
    }
    return false;
  }
}

class HasMultibyte implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isMultibyte(field);
    }
    return false;
  }
}

class IsStringInLengthRange implements Validator {
  int min;
  int max;
  IsStringInLengthRange({this.min, this.max});
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isLength(field, min, max);
    }
    return false;
  }
}

class IsStringLengthNotLessThan implements Validator {
  int value;

  IsStringLengthNotLessThan(this.value);
  @override
  bool validate(object, field) {
    if (field is String) {
      return field.length >= value;
    }
    return false;
  }
}

class IsStringLengthNotMoreThan implements Validator {
  int value;

  IsStringLengthNotMoreThan(this.value);
  @override
  bool validate(object, field) {
    if (field is String) {
      return field.length <= value;
    }
    return false;
  }
}

class Matches implements Validator {
  RegExp pattern;

  Matches({this.pattern});
  @override
  bool validate(object, field) {
    if (field is String) {
      return pattern.hasMatch(field);
    }
    return false;
  }
}

class IsUUID implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isUUID(field);
    }
    return false;
  }
}

class IsURL implements Validator {
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isURL(field);
    }
    return false;
  }
}
