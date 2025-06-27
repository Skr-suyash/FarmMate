import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryRecord extends FirestoreRecord {
  InventoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _itemName = snapshotData['itemName'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _id = snapshotData['id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventoryRecord.fromSnapshot(s));

  static Future<InventoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventoryRecord.fromSnapshot(s));

  static InventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventoryRecordData({
  DocumentReference? user,
  String? itemName,
  int? quantity,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'itemName': itemName,
      'quantity': quantity,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventoryRecordDocumentEquality implements Equality<InventoryRecord> {
  const InventoryRecordDocumentEquality();

  @override
  bool equals(InventoryRecord? e1, InventoryRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.itemName == e2?.itemName &&
        e1?.quantity == e2?.quantity &&
        e1?.id == e2?.id;
  }

  @override
  int hash(InventoryRecord? e) =>
      const ListEquality().hash([e?.user, e?.itemName, e?.quantity, e?.id]);

  @override
  bool isValidKey(Object? o) => o is InventoryRecord;
}
