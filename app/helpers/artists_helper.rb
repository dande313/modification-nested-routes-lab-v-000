module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(artist, song)
    if !artist.nil?
      artist.name
    else
      select_tag "song[artist_id]", options_for_select(Artist.all.collect{ |u| [u.id, u.name] })
    end
  end
end
