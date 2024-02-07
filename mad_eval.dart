abstract class MediaItem {
  
  String title;
  int durationInSeconds;

  MediaItem(this.title, this.durationInSeconds);
}

class Song extends MediaItem with Logger implements Playable {
  String artist;

  Song(String title, int durationInSeconds, this.artist) : super(title, durationInSeconds);

  @override
  void play() {
    print('Playing song: $title by $artist');
  }
}

class Album extends MediaItem {
  List<Song> songs;

  Album(String title, int durationInSeconds, this.songs) : super(title, durationInSeconds);
}

class Playlist extends MediaItem {
  List<MediaItem> items;

  Playlist(String title, int durationInSeconds, this.items) : super(title, durationInSeconds);
}

abstract class Playable {
  void play();
}

mixin Logger {
  void logDebug(String message) {
    print('DEBUG: $message');
  }

  void logInfo(String message) {
    print('INFO: $message');
  }

  void logWarning(String message) {
    print('WARNING: $message');
  }

  void logError(String message) {
    print('ERROR: $message');
  }
}

void main() {
  var song = Song('Shape of You', 234, 'Ed Sheeran');
  song.play();
  song.logDebug('Debug message');
  }
