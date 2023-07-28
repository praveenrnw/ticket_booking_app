// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_list_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CastListModel> _$castListModelSerializer =
    new _$CastListModelSerializer();

class _$CastListModelSerializer implements StructuredSerializer<CastListModel> {
  @override
  final Iterable<Type> types = const [CastListModel, _$CastListModel];
  @override
  final String wireName = 'CastListModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CastListModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.poster;
    if (value != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CastListModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CastListModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'profile_path':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CastListModel extends CastListModel {
  @override
  final String name;
  @override
  final int id;
  @override
  final String? poster;

  factory _$CastListModel([void Function(CastListModelBuilder)? updates]) =>
      (new CastListModelBuilder()..update(updates))._build();

  _$CastListModel._({required this.name, required this.id, this.poster})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CastListModel', 'name');
    BuiltValueNullFieldError.checkNotNull(id, r'CastListModel', 'id');
  }

  @override
  CastListModel rebuild(void Function(CastListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CastListModelBuilder toBuilder() => new CastListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CastListModel &&
        name == other.name &&
        id == other.id &&
        poster == other.poster;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, poster.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CastListModel')
          ..add('name', name)
          ..add('id', id)
          ..add('poster', poster))
        .toString();
  }
}

class CastListModelBuilder
    implements Builder<CastListModel, CastListModelBuilder> {
  _$CastListModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _poster;
  String? get poster => _$this._poster;
  set poster(String? poster) => _$this._poster = poster;

  CastListModelBuilder();

  CastListModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _poster = $v.poster;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CastListModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CastListModel;
  }

  @override
  void update(void Function(CastListModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CastListModel build() => _build();

  _$CastListModel _build() {
    final _$result = _$v ??
        new _$CastListModel._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CastListModel', 'name'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CastListModel', 'id'),
            poster: poster);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
