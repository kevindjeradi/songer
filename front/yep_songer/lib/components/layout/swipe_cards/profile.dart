class Profile {
  const Profile({
    required this.trackid,
    required this.trackname,
    required this.tracklink,
    required this.artist,
    required this.album,
    required this.photo,
  });
  final String trackid;
  final String trackname;
  final String tracklink;
  final String artist;
  final String album;
  final String photo;

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
        trackid: json['id'],
        trackname: json['title'],
        tracklink: json['preview'],
        artist: json['artist'],
        album: json['album'],
        photo: json['urlImage']);
  }
}
