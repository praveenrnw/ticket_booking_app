// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PersonDetails> _$personDetailsSerializer =
    new _$PersonDetailsSerializer();

class _$PersonDetailsSerializer implements StructuredSerializer<PersonDetails> {
  @override
  final Iterable<Type> types = const [PersonDetails, _$PersonDetails];
  @override
  final String wireName = 'PersonDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, PersonDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'birthday',
      serializers.serialize(object.BirthDate,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender, specifiedType: const FullType(int)),
      'imdb_id',
      serializers.serialize(object.imdbId,
          specifiedType: const FullType(String)),
      'place_of_birth',
      serializers.serialize(object.placeOfBirth,
          specifiedType: const FullType(String)),
      'profile_path',
      serializers.serialize(object.profile,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.DeathDate;
    if (value != null) {
      result
        ..add('deathday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PersonDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonDetailsBuilder();

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
        case 'birthday':
          result.BirthDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deathday':
          result.DeathDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'place_of_birth':
          result.placeOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profile_path':
          result.profile = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PersonDetails extends PersonDetails {
  @override
  final String name;
  @override
  final String BirthDate;
  @override
  final String? DeathDate;
  @override
  final int gender;
  @override
  final String imdbId;
  @override
  final String placeOfBirth;
  @override
  final String profile;

  factory _$PersonDetails([void Function(PersonDetailsBuilder)? updates]) =>
      (new PersonDetailsBuilder()..update(updates))._build();

  _$PersonDetails._(
      {required this.name,
      required this.BirthDate,
      this.DeathDate,
      required this.gender,
      required this.imdbId,
      required this.placeOfBirth,
      required this.profile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'PersonDetails', 'name');
    BuiltValueNullFieldError.checkNotNull(
        BirthDate, r'PersonDetails', 'BirthDate');
    BuiltValueNullFieldError.checkNotNull(gender, r'PersonDetails', 'gender');
    BuiltValueNullFieldError.checkNotNull(imdbId, r'PersonDetails', 'imdbId');
    BuiltValueNullFieldError.checkNotNull(
        placeOfBirth, r'PersonDetails', 'placeOfBirth');
    BuiltValueNullFieldError.checkNotNull(profile, r'PersonDetails', 'profile');
  }

  @override
  PersonDetails rebuild(void Function(PersonDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonDetailsBuilder toBuilder() => new PersonDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonDetails &&
        name == other.name &&
        BirthDate == other.BirthDate &&
        DeathDate == other.DeathDate &&
        gender == other.gender &&
        imdbId == other.imdbId &&
        placeOfBirth == other.placeOfBirth &&
        profile == other.profile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, BirthDate.hashCode);
    _$hash = $jc(_$hash, DeathDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, imdbId.hashCode);
    _$hash = $jc(_$hash, placeOfBirth.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonDetails')
          ..add('name', name)
          ..add('BirthDate', BirthDate)
          ..add('DeathDate', DeathDate)
          ..add('gender', gender)
          ..add('imdbId', imdbId)
          ..add('placeOfBirth', placeOfBirth)
          ..add('profile', profile))
        .toString();
  }
}

class PersonDetailsBuilder
    implements Builder<PersonDetails, PersonDetailsBuilder> {
  _$PersonDetails? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _BirthDate;
  String? get BirthDate => _$this._BirthDate;
  set BirthDate(String? BirthDate) => _$this._BirthDate = BirthDate;

  String? _DeathDate;
  String? get DeathDate => _$this._DeathDate;
  set DeathDate(String? DeathDate) => _$this._DeathDate = DeathDate;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  String? _imdbId;
  String? get imdbId => _$this._imdbId;
  set imdbId(String? imdbId) => _$this._imdbId = imdbId;

  String? _placeOfBirth;
  String? get placeOfBirth => _$this._placeOfBirth;
  set placeOfBirth(String? placeOfBirth) => _$this._placeOfBirth = placeOfBirth;

  String? _profile;
  String? get profile => _$this._profile;
  set profile(String? profile) => _$this._profile = profile;

  PersonDetailsBuilder();

  PersonDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _BirthDate = $v.BirthDate;
      _DeathDate = $v.DeathDate;
      _gender = $v.gender;
      _imdbId = $v.imdbId;
      _placeOfBirth = $v.placeOfBirth;
      _profile = $v.profile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PersonDetails;
  }

  @override
  void update(void Function(PersonDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonDetails build() => _build();

  _$PersonDetails _build() {
    final _$result = _$v ??
        new _$PersonDetails._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PersonDetails', 'name'),
            BirthDate: BuiltValueNullFieldError.checkNotNull(
                BirthDate, r'PersonDetails', 'BirthDate'),
            DeathDate: DeathDate,
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'PersonDetails', 'gender'),
            imdbId: BuiltValueNullFieldError.checkNotNull(
                imdbId, r'PersonDetails', 'imdbId'),
            placeOfBirth: BuiltValueNullFieldError.checkNotNull(
                placeOfBirth, r'PersonDetails', 'placeOfBirth'),
            profile: BuiltValueNullFieldError.checkNotNull(
                profile, r'PersonDetails', 'profile'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
