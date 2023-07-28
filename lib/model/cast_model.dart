import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ticket_booking_app/model/cast_list_model.dart';
import 'package:ticket_booking_app/model/serializers.dart';

part 'cast_model.g.dart';

abstract class CastModel implements Built<CastModel, CastModelBuilder> {
  CastModel._();

  factory CastModel([void Function(CastModelBuilder) updates]) = _$CastModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CastModel.serializer, this)
        as Map<String, dynamic>;
  }

  static CastModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CastModel.serializer, json)!;
  }

  static Serializer<CastModel> get serializer => _$castModelSerializer;

  int get id;

  BuiltList<CastListModel> get cast;
}
