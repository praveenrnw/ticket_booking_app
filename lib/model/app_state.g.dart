// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.popular;
    if (value != null) {
      result
        ..add('popular')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieModel)])));
    }
    value = object.topRated;
    if (value != null) {
      result
        ..add('topRated')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieModel)])));
    }
    value = object.upcoming;
    if (value != null) {
      result
        ..add('upcoming')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieModel)])));
    }
    value = object.castDetails;
    if (value != null) {
      result
        ..add('castDetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CastModel)));
    }
    value = object.personDetails;
    if (value != null) {
      result
        ..add('personDetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PersonDetails)));
    }
    value = object.personMovies;
    if (value != null) {
      result
        ..add('personMovies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieModel)])));
    }
    value = object.personTvShows;
    if (value != null) {
      result
        ..add('personTvShows')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TvModel)])));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'popular':
          result.popular.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieModel)]))!
              as BuiltList<Object?>);
          break;
        case 'topRated':
          result.topRated.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieModel)]))!
              as BuiltList<Object?>);
          break;
        case 'upcoming':
          result.upcoming.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieModel)]))!
              as BuiltList<Object?>);
          break;
        case 'castDetails':
          result.castDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(CastModel))! as CastModel);
          break;
        case 'personDetails':
          result.personDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(PersonDetails))! as PersonDetails);
          break;
        case 'personMovies':
          result.personMovies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieModel)]))!
              as BuiltList<Object?>);
          break;
        case 'personTvShows':
          result.personTvShows.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TvModel)]))!
              as BuiltList<Object?>);
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<MovieModel>? popular;
  @override
  final BuiltList<MovieModel>? topRated;
  @override
  final BuiltList<MovieModel>? upcoming;
  @override
  final CastModel? castDetails;
  @override
  final PersonDetails? personDetails;
  @override
  final BuiltList<MovieModel>? personMovies;
  @override
  final BuiltList<TvModel>? personTvShows;
  @override
  final int? count;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {this.popular,
      this.topRated,
      this.upcoming,
      this.castDetails,
      this.personDetails,
      this.personMovies,
      this.personTvShows,
      this.count})
      : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        popular == other.popular &&
        topRated == other.topRated &&
        upcoming == other.upcoming &&
        castDetails == other.castDetails &&
        personDetails == other.personDetails &&
        personMovies == other.personMovies &&
        personTvShows == other.personTvShows &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, popular.hashCode);
    _$hash = $jc(_$hash, topRated.hashCode);
    _$hash = $jc(_$hash, upcoming.hashCode);
    _$hash = $jc(_$hash, castDetails.hashCode);
    _$hash = $jc(_$hash, personDetails.hashCode);
    _$hash = $jc(_$hash, personMovies.hashCode);
    _$hash = $jc(_$hash, personTvShows.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('popular', popular)
          ..add('topRated', topRated)
          ..add('upcoming', upcoming)
          ..add('castDetails', castDetails)
          ..add('personDetails', personDetails)
          ..add('personMovies', personMovies)
          ..add('personTvShows', personTvShows)
          ..add('count', count))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<MovieModel>? _popular;
  ListBuilder<MovieModel> get popular =>
      _$this._popular ??= new ListBuilder<MovieModel>();
  set popular(ListBuilder<MovieModel>? popular) => _$this._popular = popular;

  ListBuilder<MovieModel>? _topRated;
  ListBuilder<MovieModel> get topRated =>
      _$this._topRated ??= new ListBuilder<MovieModel>();
  set topRated(ListBuilder<MovieModel>? topRated) =>
      _$this._topRated = topRated;

  ListBuilder<MovieModel>? _upcoming;
  ListBuilder<MovieModel> get upcoming =>
      _$this._upcoming ??= new ListBuilder<MovieModel>();
  set upcoming(ListBuilder<MovieModel>? upcoming) =>
      _$this._upcoming = upcoming;

  CastModelBuilder? _castDetails;
  CastModelBuilder get castDetails =>
      _$this._castDetails ??= new CastModelBuilder();
  set castDetails(CastModelBuilder? castDetails) =>
      _$this._castDetails = castDetails;

  PersonDetailsBuilder? _personDetails;
  PersonDetailsBuilder get personDetails =>
      _$this._personDetails ??= new PersonDetailsBuilder();
  set personDetails(PersonDetailsBuilder? personDetails) =>
      _$this._personDetails = personDetails;

  ListBuilder<MovieModel>? _personMovies;
  ListBuilder<MovieModel> get personMovies =>
      _$this._personMovies ??= new ListBuilder<MovieModel>();
  set personMovies(ListBuilder<MovieModel>? personMovies) =>
      _$this._personMovies = personMovies;

  ListBuilder<TvModel>? _personTvShows;
  ListBuilder<TvModel> get personTvShows =>
      _$this._personTvShows ??= new ListBuilder<TvModel>();
  set personTvShows(ListBuilder<TvModel>? personTvShows) =>
      _$this._personTvShows = personTvShows;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _popular = $v.popular?.toBuilder();
      _topRated = $v.topRated?.toBuilder();
      _upcoming = $v.upcoming?.toBuilder();
      _castDetails = $v.castDetails?.toBuilder();
      _personDetails = $v.personDetails?.toBuilder();
      _personMovies = $v.personMovies?.toBuilder();
      _personTvShows = $v.personTvShows?.toBuilder();
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              popular: _popular?.build(),
              topRated: _topRated?.build(),
              upcoming: _upcoming?.build(),
              castDetails: _castDetails?.build(),
              personDetails: _personDetails?.build(),
              personMovies: _personMovies?.build(),
              personTvShows: _personTvShows?.build(),
              count: count);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'popular';
        _popular?.build();
        _$failedField = 'topRated';
        _topRated?.build();
        _$failedField = 'upcoming';
        _upcoming?.build();
        _$failedField = 'castDetails';
        _castDetails?.build();
        _$failedField = 'personDetails';
        _personDetails?.build();
        _$failedField = 'personMovies';
        _personMovies?.build();
        _$failedField = 'personTvShows';
        _personTvShows?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
