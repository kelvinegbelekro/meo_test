class ChannelModel {
  final String callLetter;
  final String title;
  final String? imageUrl;
  final String description;
  DateTime? viewedAt;

  ChannelModel({
    required this.callLetter,
    this.imageUrl,
    required this.title,
    required this.description,
    this.viewedAt,
  });

  factory ChannelModel.fromJson(Map<String, dynamic> json) => ChannelModel(
      callLetter: json['CallLetter'],
      title: json['Title'],
      imageUrl: json['imageUrl'] ?? "",
      description: json['Description']);

  Map<String, dynamic> toJson() {
    return {
      'CallLetter': callLetter,
      'Title': title,
      'ImageUrl': imageUrl,
      'Description': description,
    };
  }

  @override
  String toString() {
    return 'ChannelModel { callLetter: $callLetter, title: $title, imageUrl: $imageUrl, description: $description }';
  }
}
