import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ticket_booking_app/model/serializers.dart';

part 'cast_list_model.g.dart';

abstract class CastListModel
    implements Built<CastListModel, CastListModelBuilder> {
  CastListModel._();

  factory CastListModel([void Function(CastListModelBuilder) updates]) =
      _$CastListModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CastListModel.serializer, this)
        as Map<String, dynamic>;
  }

  static CastListModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CastListModel.serializer, json)!;
  }

  static Serializer<CastListModel> get serializer => _$castListModelSerializer;

  String get name;

  int get id;

  @BuiltValueField(wireName: "profile_path")
  String? get poster;

  String get imageUrl => 'https://image.tmdb.org/t/p/w500/${poster}';
}
