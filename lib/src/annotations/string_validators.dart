import 'package:class_validator/src/annotations/base_validator.dart';
import 'package:validators/validators.dart' as validator;
import 'package:validators/sanitizers.dart' as sanitizer;

class Contains implements Validator {
  final String what;

  const Contains(this.what);

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.contains(field, what);
    }
    return false;
  }
}

class NotContains implements Validator {
  final String what;

  const NotContains(this.what);

  @override
  bool validate(object, field) {
    if (field is String) {
      return !validator.contains(field, what);
    }
    return false;
  }
}

class IsAlphabetic implements Validator {
  const IsAlphabetic();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isAlpha(field);
    }
    return false;
  }
}

class IsAlphanumeric implements Validator {
  const IsAlphanumeric();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isAlphanumeric(field);
    }
    return false;
  }
}

class IsAscii implements Validator {
  const IsAscii();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isAscii(field);
    }
    return false;
  }
}

class IsBase64 implements Validator {
  const IsBase64();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isBase64(field);
    }
    return false;
  }
}

class IsCreditCard implements Validator {
  const IsCreditCard();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isCreditCard(field);
    }
    return false;
  }
}

class IsEmail implements Validator {
  const IsEmail();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isEmail(field);
    }
    return false;
  }
}

class IsFullyQualifiedDomainName implements Validator {
  final bool requireTld;
  final bool allowUnderscores;

  const IsFullyQualifiedDomainName({this.requireTld = true, this.allowUnderscores = false});

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isFQDN(field, requireTld: requireTld, allowUnderscores: allowUnderscores);
    }
    return false;
  }
}

class HasFullWidth implements Validator {
  const HasFullWidth();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isFullWidth(field);
    }
    return false;
  }
}

class HasHalfWidth implements Validator {
  const HasHalfWidth();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isHalfWidth(field);
    }
    return false;
  }
}

class IsHexColor implements Validator {
  const IsHexColor();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isHexColor(field);
    }
    return false;
  }
}

class IsHexadecimalNumber implements Validator {
  const IsHexadecimalNumber();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isHexadecimal(field);
    }
    return false;
  }
}

class IsIP implements Validator {
  final int v;

  const IsIP({this.v});
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isIP(field, v);
    }
    return false;
  }
}

class IsISBN implements Validator {
  final int v;

  const IsISBN({this.v});

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isISBN(field, v);
    }
    return false;
  }
}

class IsJson implements Validator {
  const IsJson();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isJSON(field);
    }
    return false;
  }
}

class IsLowercase implements Validator {
  const IsLowercase();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isLowercase(field);
    }
    return false;
  }
}

class IsMongoId implements Validator {
  const IsMongoId();
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isMongoId(field);
    }
    return false;
  }
}

class HasMultibyte implements Validator {
  const HasMultibyte();

  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isMultibyte(field);
    }
    return false;
  }
}

class IsStringInLengthRange implements Validator {
  final int min;
  final int max;
  const IsStringInLengthRange({this.min, this.max});
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isLength(field, min, max);
    }
    return false;
  }
}

class IsStringLengthNotLessThan implements Validator {
  final int value;

  const IsStringLengthNotLessThan(this.value);
  @override
  bool validate(object, field) {
    if (field is String) {
      return field.length >= value;
    }
    return false;
  }
}

class IsStringLengthNotMoreThan implements Validator {
  final int value;

  const IsStringLengthNotMoreThan(this.value);
  @override
  bool validate(object, field) {
    if (field is String) {
      return field.length <= value;
    }
    return false;
  }
}

class Matches implements Validator {
  final RegExp pattern;

  const Matches({this.pattern});
  @override
  bool validate(object, field) {
    if (field is String) {
      return pattern.hasMatch(field);
    }
    return false;
  }
}

class IsUUID implements Validator {
  const IsUUID();
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isUUID(field);
    }
    return false;
  }
}

class IsURL implements Validator {
  const IsURL();
  @override
  bool validate(object, field) {
    if (field is String) {
      return validator.isURL(field);
    }
    return false;
  }
}
