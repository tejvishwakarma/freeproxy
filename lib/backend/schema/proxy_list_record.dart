import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProxyListRecord extends FirestoreRecord {
  ProxyListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ip" field.
  String? _ip;
  String get ip => _ip ?? '';
  bool hasIp() => _ip != null;

  // "port" field.
  int? _port;
  int get port => _port ?? 0;
  bool hasPort() => _port != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _ip = snapshotData['ip'] as String?;
    _port = castToType<int>(snapshotData['port']);
    _region = snapshotData['region'] as String?;
    _type = snapshotData['type'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
    _userName = snapshotData['userName'] as String?;
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proxyList');

  static Stream<ProxyListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProxyListRecord.fromSnapshot(s));

  static Future<ProxyListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProxyListRecord.fromSnapshot(s));

  static ProxyListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProxyListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProxyListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProxyListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProxyListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProxyListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProxyListRecordData({
  String? ip,
  int? port,
  String? region,
  String? type,
  DocumentReference? ref,
  String? userName,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ip': ip,
      'port': port,
      'region': region,
      'type': type,
      'ref': ref,
      'userName': userName,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProxyListRecordDocumentEquality implements Equality<ProxyListRecord> {
  const ProxyListRecordDocumentEquality();

  @override
  bool equals(ProxyListRecord? e1, ProxyListRecord? e2) {
    return e1?.ip == e2?.ip &&
        e1?.port == e2?.port &&
        e1?.region == e2?.region &&
        e1?.type == e2?.type &&
        e1?.ref == e2?.ref &&
        e1?.userName == e2?.userName &&
        e1?.password == e2?.password;
  }

  @override
  int hash(ProxyListRecord? e) => const ListEquality().hash(
      [e?.ip, e?.port, e?.region, e?.type, e?.ref, e?.userName, e?.password]);

  @override
  bool isValidKey(Object? o) => o is ProxyListRecord;
}
