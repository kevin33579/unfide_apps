part of "models.dart";

class Datas extends Equatable {
  final String dataId;
  final String dataName;
  final String dataData;
  final String createdAt;
  final String updatedAt;

  Datas(this.dataId, this.dataName, this.dataData, this.createdAt, this.updatedAt);

  @override
  List<Object> get props => [
    dataId,
    dataName,
    dataData,
    createdAt,
    updatedAt,
  ];
}
