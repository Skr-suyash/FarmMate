import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CropsRecord extends FirestoreRecord {
  CropsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cropName" field.
  String? _cropName;
  String get cropName => _cropName ?? '';
  bool hasCropName() => _cropName != null;

  // "plantedDate" field.
  DateTime? _plantedDate;
  DateTime? get plantedDate => _plantedDate;
  bool hasPlantedDate() => _plantedDate != null;

  // "expectedHarvestDate" field.
  DateTime? _expectedHarvestDate;
  DateTime? get expectedHarvestDate => _expectedHarvestDate;
  bool hasExpectedHarvestDate() => _expectedHarvestDate != null;

  // "lastFertilisedDate" field.
  DateTime? _lastFertilisedDate;
  DateTime? get lastFertilisedDate => _lastFertilisedDate;
  bool hasLastFertilisedDate() => _lastFertilisedDate != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _cropName = snapshotData['cropName'] as String?;
    _plantedDate = snapshotData['plantedDate'] as DateTime?;
    _expectedHarvestDate = snapshotData['expectedHarvestDate'] as DateTime?;
    _lastFertilisedDate = snapshotData['lastFertilisedDate'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Crops');

  static Stream<CropsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CropsRecord.fromSnapshot(s));

  static Future<CropsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CropsRecord.fromSnapshot(s));

  static CropsRecord fromSnapshot(DocumentSnapshot snapshot) => CropsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CropsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CropsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CropsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CropsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCropsRecordData({
  String? cropName,
  DateTime? plantedDate,
  DateTime? expectedHarvestDate,
  DateTime? lastFertilisedDate,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cropName': cropName,
      'plantedDate': plantedDate,
      'expectedHarvestDate': expectedHarvestDate,
      'lastFertilisedDate': lastFertilisedDate,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class CropsRecordDocumentEquality implements Equality<CropsRecord> {
  const CropsRecordDocumentEquality();

  @override
  bool equals(CropsRecord? e1, CropsRecord? e2) {
    return e1?.cropName == e2?.cropName &&
        e1?.plantedDate == e2?.plantedDate &&
        e1?.expectedHarvestDate == e2?.expectedHarvestDate &&
        e1?.lastFertilisedDate == e2?.lastFertilisedDate &&
        e1?.user == e2?.user;
  }

  @override
  int hash(CropsRecord? e) => const ListEquality().hash([
        e?.cropName,
        e?.plantedDate,
        e?.expectedHarvestDate,
        e?.lastFertilisedDate,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is CropsRecord;
}
