// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CastModel> _$castModelSerializer = new _$CastModelSerializer();

class _$CastModelSerializer implements StructuredSerializer<CastModel> {
  @override
  final Iterable<Type> types = const [CastModel, _$CastModel];
  @override
  final String wireName = 'CastModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CastModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'cast',
      serializers.serialize(object.cast,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CastListModel)])),
    ];

    return result;
  }

  @override
  CastModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CastModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'cast':
          result.cast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CastListModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CastModel extends CastModel {
  @override
  final int id;
  @override
  final BuiltList<CastListModel> cast;

  factory _$CastModel([void Function(CastModelBuilder)? updates]) =>
      (new CastModelBuilder()..update(updates))._build();

  _$CastModel._({required this.id, required this.cast}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'CastModel', 'id');
    BuiltValueNullFieldError.checkNotNull(cast, r'CastModel', 'cast');
  }

  @override
  CastModel rebuild(void Function(CastModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CastModelBuilder toBuilder() => new CastModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CastModel && id == other.id && cast == other.cast;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, cast.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CastModel')
          ..add('id', id)
          ..add('cast', cast))
        .toString();
  }
}

class CastModelBuilder implements Builder<CastModel, CastModelBuilder> {
  _$CastModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<CastListModel>? _cast;
  ListBuilder<CastListModel> get cast =>
      _$this._cast ??= new ListBuilder<CastListModel>();
  set cast(ListBuilder<CastListModel>? cast) => _$this._cast = cast;

  CastModelBuilder();

  CastModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _cast = $v.cast.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CastModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CastModel;
  }

  @override
  void update(void Function(CastModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CastModel build() => _build();

  _$CastModel _build() {
    _$CastModel _$result;
    try {
      _$result = _$v ??
          new _$CastModel._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'CastModel', 'id'),
              cast: cast.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cast';
        cast.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CastModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
