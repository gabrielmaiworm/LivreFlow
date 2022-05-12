import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_info_record.g.dart';

abstract class UsuarioInfoRecord
    implements Built<UsuarioInfoRecord, UsuarioInfoRecordBuilder> {
  static Serializer<UsuarioInfoRecord> get serializer =>
      _$usuarioInfoRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'doc_user')
  String get docUser;

  @nullable
  @BuiltValueField(wireName: 'endereco_comp')
  String get enderecoComp;

  @nullable
  @BuiltValueField(wireName: 'data_nascimento')
  DateTime get dataNascimento;

  @nullable
  @BuiltValueField(wireName: 'imagem_perfil')
  String get imagemPerfil;

  @nullable
  @BuiltValueField(wireName: 'imagem_doc')
  String get imagemDoc;

  @nullable
  @BuiltValueField(wireName: 'termo_uso')
  bool get termoUso;

  @nullable
  @BuiltValueField(wireName: 'id_usuario')
  DocumentReference get idUsuario;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsuarioInfoRecordBuilder builder) => builder
    ..docUser = ''
    ..enderecoComp = ''
    ..imagemPerfil = ''
    ..imagemDoc = ''
    ..termoUso = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario_info');

  static Stream<UsuarioInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsuarioInfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsuarioInfoRecord._();
  factory UsuarioInfoRecord([void Function(UsuarioInfoRecordBuilder) updates]) =
      _$UsuarioInfoRecord;

  static UsuarioInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsuarioInfoRecordData({
  String docUser,
  String enderecoComp,
  DateTime dataNascimento,
  String imagemPerfil,
  String imagemDoc,
  bool termoUso,
  DocumentReference idUsuario,
}) =>
    serializers.toFirestore(
        UsuarioInfoRecord.serializer,
        UsuarioInfoRecord((u) => u
          ..docUser = docUser
          ..enderecoComp = enderecoComp
          ..dataNascimento = dataNascimento
          ..imagemPerfil = imagemPerfil
          ..imagemDoc = imagemDoc
          ..termoUso = termoUso
          ..idUsuario = idUsuario));
