import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'facturas_record.g.dart';

abstract class FacturasRecord
    implements Built<FacturasRecord, FacturasRecordBuilder> {
  static Serializer<FacturasRecord> get serializer =>
      _$facturasRecordSerializer;

  DateTime? get fecha;

  String? get receptor;

  DocumentReference? get emisor;

  double? get total;

  BuiltList<DocumentReference>? get detalle;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FacturasRecordBuilder builder) => builder
    ..receptor = ''
    ..total = 0.0
    ..detalle = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Facturas');

  static Stream<FacturasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FacturasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FacturasRecord._();
  factory FacturasRecord([void Function(FacturasRecordBuilder) updates]) =
      _$FacturasRecord;

  static FacturasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFacturasRecordData({
  DateTime? fecha,
  String? receptor,
  DocumentReference? emisor,
  double? total,
}) {
  final firestoreData = serializers.toFirestore(
    FacturasRecord.serializer,
    FacturasRecord(
      (f) => f
        ..fecha = fecha
        ..receptor = receptor
        ..emisor = emisor
        ..total = total
        ..detalle = null,
    ),
  );

  return firestoreData;
}
