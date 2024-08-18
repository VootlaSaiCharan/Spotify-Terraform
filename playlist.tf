resource "spotify_playlist" "<Play_list_name>" {
  name        = "<Play_list_name>"
  description = "<Music_album_description>"
  tracks = ["<Music_list_track_ID>"]
}

resource "spotify_playlist" "<Play_list_name>" {
  name        = "<Play_list_name>"
  description = "<Music_album_description>"
  public      = false
  tracks = ["<Music_list_track_ID>"]
}

data "spotify_search_track" "<artist_name>" {
  artist = "<artist_name>"
  # limit = 5
}

resource "spotify_playlist" "<Play_List_Name>" {
  name = "Play_List_Name"

  tracks = [
    data.spotify_search_track.<artist_name>.tracks[0].id,
  ]
}