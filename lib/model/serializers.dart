library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:ticket_booking_app/model/cast_list_model.dart';
import 'package:ticket_booking_app/model/cast_model.dart';
import 'package:ticket_booking_app/model/movie_model.dart';
import 'package:ticket_booking_app/model/person_details.dart';

import 'app_state.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  MovieModel,
  CastModel,
  CastListModel,
  PersonDetails,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
