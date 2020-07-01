        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'counter.g.dart';

abstract class Counter implements Built<Counter, CounterBuilder> {

    
        @nullable

    
    @BuiltValueField(wireName: 'amount')
    int get amount;

    // Boilerplate code needed to wire-up generated code
    Counter._();

    factory Counter([updates(CounterBuilder b)]) = _$Counter;
    static Serializer<Counter> get serializer => _$counterSerializer;

}

