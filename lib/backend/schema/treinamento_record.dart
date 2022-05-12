import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'treinamento_record.g.dart';

abstract class TreinamentoRecord
    implements Built<TreinamentoRecord, TreinamentoRecordBuilder> {
  static Serializer<TreinamentoRecord> get serializer =>
      _$treinamentoRecordSerializer;

  @nullable
  bool get aceito;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TreinamentoRecordBuilder builder) =>
      builder..aceito = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('treinamento');

  static Stream<TreinamentoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TreinamentoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TreinamentoRecord._();
  factory TreinamentoRecord([void Function(TreinamentoRecordBuilder) updates]) =
      _$TreinamentoRecord;

  static TreinamentoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTreinamentoRecordData({
  bool aceito,
}) =>
    serializers.toFirestore(TreinamentoRecord.serializer,
        TreinamentoRecord((t) => t..aceito = aceito));
