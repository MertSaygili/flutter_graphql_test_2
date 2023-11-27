// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, prefer_is_not_operator, annotate_overrides, prefer_final_fields

import 'package:gql/ast.dart';

class Query$fetchContinents {
  Query$fetchContinents({
    required this.continents,
    this.$__typename = 'Query',
  });

  factory Query$fetchContinents.fromJson(Map<String, dynamic> json) {
    final l$continents = json['continents'];
    final l$$__typename = json['__typename'];
    return Query$fetchContinents(
      continents: (l$continents as List<dynamic>).map((e) => Query$fetchContinents$continents.fromJson((e as Map<String, dynamic>))).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$fetchContinents$continents> continents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$continents = continents;
    _resultData['continents'] = l$continents.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$continents = continents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$continents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$fetchContinents) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$continents = continents;
    final lOther$continents = other.continents;
    if (l$continents.length != lOther$continents.length) {
      return false;
    }
    for (int i = 0; i < l$continents.length; i++) {
      final l$continents$entry = l$continents[i];
      final lOther$continents$entry = lOther$continents[i];
      if (l$continents$entry != lOther$continents$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$fetchContinents on Query$fetchContinents {
  CopyWith$Query$fetchContinents<Query$fetchContinents> get copyWith => CopyWith$Query$fetchContinents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$fetchContinents<TRes> {
  factory CopyWith$Query$fetchContinents(
    Query$fetchContinents instance,
    TRes Function(Query$fetchContinents) then,
  ) = _CopyWithImpl$Query$fetchContinents;

  factory CopyWith$Query$fetchContinents.stub(TRes res) = _CopyWithStubImpl$Query$fetchContinents;

  TRes call({
    List<Query$fetchContinents$continents>? continents,
    String? $__typename,
  });
  TRes continents(
      Iterable<Query$fetchContinents$continents> Function(Iterable<CopyWith$Query$fetchContinents$continents<Query$fetchContinents$continents>>) _fn);
}

class _CopyWithImpl$Query$fetchContinents<TRes> implements CopyWith$Query$fetchContinents<TRes> {
  _CopyWithImpl$Query$fetchContinents(
    this._instance,
    this._then,
  );

  final Query$fetchContinents _instance;

  final TRes Function(Query$fetchContinents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? continents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$fetchContinents(
        continents: continents == _undefined || continents == null ? _instance.continents : (continents as List<Query$fetchContinents$continents>),
        $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String),
      ));

  TRes continents(
          Iterable<Query$fetchContinents$continents> Function(Iterable<CopyWith$Query$fetchContinents$continents<Query$fetchContinents$continents>>)
              _fn) =>
      call(
          continents: _fn(_instance.continents.map((e) => CopyWith$Query$fetchContinents$continents(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$fetchContinents<TRes> implements CopyWith$Query$fetchContinents<TRes> {
  _CopyWithStubImpl$Query$fetchContinents(this._res);

  TRes _res;

  call({
    List<Query$fetchContinents$continents>? continents,
    String? $__typename,
  }) =>
      _res;

  continents(_fn) => _res;
}

const documentNodeQueryfetchContinents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetchContinents'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'continents'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$fetchContinents$continents {
  Query$fetchContinents$continents({
    required this.code,
    required this.name,
    this.$__typename = 'Continent',
  });

  factory Query$fetchContinents$continents.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$fetchContinents$continents(
      code: (l$code as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$fetchContinents$continents) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$fetchContinents$continents on Query$fetchContinents$continents {
  CopyWith$Query$fetchContinents$continents<Query$fetchContinents$continents> get copyWith => CopyWith$Query$fetchContinents$continents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$fetchContinents$continents<TRes> {
  factory CopyWith$Query$fetchContinents$continents(
    Query$fetchContinents$continents instance,
    TRes Function(Query$fetchContinents$continents) then,
  ) = _CopyWithImpl$Query$fetchContinents$continents;

  factory CopyWith$Query$fetchContinents$continents.stub(TRes res) = _CopyWithStubImpl$Query$fetchContinents$continents;

  TRes call({
    String? code,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$fetchContinents$continents<TRes> implements CopyWith$Query$fetchContinents$continents<TRes> {
  _CopyWithImpl$Query$fetchContinents$continents(
    this._instance,
    this._then,
  );

  final Query$fetchContinents$continents _instance;

  final TRes Function(Query$fetchContinents$continents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$fetchContinents$continents(
        code: code == _undefined || code == null ? _instance.code : (code as String),
        name: name == _undefined || name == null ? _instance.name : (name as String),
        $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$fetchContinents$continents<TRes> implements CopyWith$Query$fetchContinents$continents<TRes> {
  _CopyWithStubImpl$Query$fetchContinents$continents(this._res);

  TRes _res;

  call({
    String? code,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
