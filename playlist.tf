# resource "spotify_playlist" "Devotional" {
#   name        = "Devotional"
#   description = "Isha Music"
#   tracks = ["07dLDdQaGtCzRksu1phXbG"]
# }

# resource "spotify_playlist" "old_bollywood_duets" {
#   name        = "old bollywood duets"
#   description = "My playlist is so awesome"
#   public      = false

#   tracks = ["3wnrSZ4uUY6WhejiTFI2UA"]
# }

data "spotify_search_track" "RaghuKunche" {
  artist = "Raghu Kunche"
  # limit = 5
}

resource "spotify_playlist" "My_Fav_RaghuKunche_Music" {
  name = "My_Fav_RaghuKunche_Music"

  tracks = [
    data.spotify_search_track.RaghuKunche.tracks[0].id,
  ]
}