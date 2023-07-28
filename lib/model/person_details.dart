import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ticket_booking_app/model/serializers.dart';

part 'person_details.g.dart';

abstract class PersonDetails
    implements Built<PersonDetails, PersonDetailsBuilder> {
  PersonDetails._();
  factory PersonDetails([void Function(PersonDetailsBuilder) updates]) =
      _$PersonDetails;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(PersonDetails.serializer, this)
        as Map<String, dynamic>;
  }

  static PersonDetails? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(PersonDetails.serializer, json)!;
  }

  static Serializer<PersonDetails> get serializer => _$personDetailsSerializer;

  String get name;
  @BuiltValueField(wireName: "birthday")
  String get BirthDate;
  @BuiltValueField(wireName: "deathday")
  String? get DeathDate;
  int get gender;
  @BuiltValueField(wireName: "imdb_id")
  String get imdbId;
  @BuiltValueField(wireName: "place_of_birth")
  String get placeOfBirth;

  @BuiltValueField(wireName: "profile_path")
  String get profile;

  String get imageUrl => 'https://image.tmdb.org/t/p/w500/${profile}';
}
