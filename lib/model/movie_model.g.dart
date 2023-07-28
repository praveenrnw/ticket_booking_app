// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieModel> _$movieModelSerializer = new _$MovieModelSerializer();

class _$MovieModelSerializer implements StructuredSerializer<MovieModel> {
  @override
  final Iterable<Type> types = const [MovieModel, _$MovieModel];
  @override
  final String wireName = 'MovieModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.vote, specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
      'original_language',
      serializers.serialize(object.lang, specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieModelBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'poster_path':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'vote_average':
          result.vote = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'original_language':
          result.lang = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieModel extends MovieModel {
  @override
  final int id;
  @override
  final String title;
  @override
  final String? image;
  @override
  final String overview;
  @override
  final String releaseDate;
  @override
  final double vote;
  @override
  final int voteCount;
  @override
  final String lang;
  @override
  final double popularity;

  factory _$MovieModel([void Function(MovieModelBuilder)? updates]) =>
      (new MovieModelBuilder()..update(updates))._build();

  _$MovieModel._(
      {required this.id,
      required this.title,
      this.image,
      required this.overview,
      required this.releaseDate,
      required this.vote,
      required this.voteCount,
      required this.lang,
      required this.popularity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'MovieModel', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'MovieModel', 'title');
    BuiltValueNullFieldError.checkNotNull(overview, r'MovieModel', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        releaseDate, r'MovieModel', 'releaseDate');
    BuiltValueNullFieldError.checkNotNull(vote, r'MovieModel', 'vote');
    BuiltValueNullFieldError.checkNotNull(
        voteCount, r'MovieModel', 'voteCount');
    BuiltValueNullFieldError.checkNotNull(lang, r'MovieModel', 'lang');
    BuiltValueNullFieldError.checkNotNull(
        popularity, r'MovieModel', 'popularity');
  }

  @override
  MovieModel rebuild(void Function(MovieModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieModelBuilder toBuilder() => new MovieModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieModel &&
        id == other.id &&
        title == other.title &&
        image == other.image &&
        overview == other.overview &&
        releaseDate == other.releaseDate &&
        vote == other.vote &&
        voteCount == other.voteCount &&
        lang == other.lang &&
        popularity == other.popularity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, vote.hashCode);
    _$hash = $jc(_$hash, voteCount.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieModel')
          ..add('id', id)
          ..add('title', title)
          ..add('image', image)
          ..add('overview', overview)
          ..add('releaseDate', releaseDate)
          ..add('vote', vote)
          ..add('voteCount', voteCount)
          ..add('lang', lang)
          ..add('popularity', popularity))
        .toString();
  }
}

class MovieModelBuilder implements Builder<MovieModel, MovieModelBuilder> {
  _$MovieModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  double? _vote;
  double? get vote => _$this._vote;
  set vote(double? vote) => _$this._vote = vote;

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  MovieModelBuilder();

  MovieModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _image = $v.image;
      _overview = $v.overview;
      _releaseDate = $v.releaseDate;
      _vote = $v.vote;
      _voteCount = $v.voteCount;
      _lang = $v.lang;
      _popularity = $v.popularity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieModel;
  }

  @override
  void update(void Function(MovieModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieModel build() => _build();

  _$MovieModel _build() {
    final _$result = _$v ??
        new _$MovieModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'MovieModel', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'MovieModel', 'title'),
            image: image,
            overview: BuiltValueNullFieldError.checkNotNull(
                overview, r'MovieModel', 'overview'),
            releaseDate: BuiltValueNullFieldError.checkNotNull(
                releaseDate, r'MovieModel', 'releaseDate'),
            vote: BuiltValueNullFieldError.checkNotNull(
                vote, r'MovieModel', 'vote'),
            voteCount: BuiltValueNullFieldError.checkNotNull(
                voteCount, r'MovieModel', 'voteCount'),
            lang: BuiltValueNullFieldError.checkNotNull(
                lang, r'MovieModel', 'lang'),
            popularity: BuiltValueNullFieldError.checkNotNull(
                popularity, r'MovieModel', 'popularity'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
