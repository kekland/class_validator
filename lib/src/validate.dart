import 'dart:mirrors';

import 'package:class_validator/src/annotations/base_validator.dart';

bool _validateField({dynamic object, dynamic field, Symbol key, DeclarationMirror mirror}) {
  bool passed = true;
  bool _passedOverride = false;

  mirror.metadata.forEach((metadataMirror) {
    if (metadataMirror.type.superclass.reflectedType is Validator) {
      passed = passed && (metadataMirror.reflectee as Validator).validate(object, field);
    }
  });

  return passed;
}

bool validate(dynamic object) {
  var mirror = reflect(object);
  bool passed = true;
  mirror.type.declarations.forEach((key, declarationMirror) {
    bool _passed = _validateField(
      object: object,
      field: mirror.getField(key).reflectee,
      key: key,
      mirror: declarationMirror,
    );
    passed = passed && _passed;
  });
  return passed;
}
