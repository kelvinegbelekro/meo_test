class ProgramModel {
  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final String synopsis;
  final String? imageUri;

  ProgramModel({
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.synopsis,
    this.imageUri,
  });

  factory ProgramModel.fromJson(Map<String, dynamic> json) => ProgramModel(
        title: json['Title'],
        startDate: DateTime.parse(json['StartDate']),
        endDate: DateTime.parse(json['EndDate']),
        synopsis: json['Synopsis'],
        imageUri: json['ImageUri'],
      );

  @override
  String toString() {
    return 'ProgramModel {title: $title, startDate: $startDate'
        'endDate: $endDate,synopsis $synopsis, imageUri: $imageUri}';
  }
}
