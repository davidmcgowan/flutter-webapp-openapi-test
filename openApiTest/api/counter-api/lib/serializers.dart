library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/counter.dart';


part 'serializers.g.dart';

@SerializersFor(const [
Counter,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Counter)]),
() => new ListBuilder<Counter>())

).build();

Serializers standardSerializers =
(serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();