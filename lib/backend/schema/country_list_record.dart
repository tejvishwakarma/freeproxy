import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryListRecord extends FirestoreRecord {
  CountryListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  bool hasCountryName() => _countryName != null;

  // "countryFlag" field.
  String? _countryFlag;
  String get countryFlag => _countryFlag ?? '';
  bool hasCountryFlag() => _countryFlag != null;

  void _initializeFields() {
    _countryName = snapshotData['countryName'] as String?;
    _countryFlag = snapshotData['countryFlag'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('countryList');

  static Stream<CountryListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountryListRecord.fromSnapshot(s));

  static Future<CountryListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountryListRecord.fromSnapshot(s));

  static CountryListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountryListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountryListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountryListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountryListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountryListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountryListRecordData({
  String? countryName,
  String? countryFlag,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'countryName': countryName,
      'countryFlag': countryFlag,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountryListRecordDocumentEquality implements Equality<CountryListRecord> {
  const CountryListRecordDocumentEquality();

  @override
  bool equals(CountryListRecord? e1, CountryListRecord? e2) {
    return e1?.countryName == e2?.countryName &&
        e1?.countryFlag == e2?.countryFlag;
  }

  @override
  int hash(CountryListRecord? e) =>
      const ListEquality().hash([e?.countryName, e?.countryFlag]);

  @override
  bool isValidKey(Object? o) => o is CountryListRecord;
}
