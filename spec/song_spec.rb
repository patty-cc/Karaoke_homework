require('minitest/autorun')
require_relative('../Song.rb')

class TestSong < MiniTest::Test

  def setup
    @song_1 = Song.new("Wonderwall", "Oasis")
  end

  def test_song_name
    assert_equal("Wonderwall", @song_1.title)
  end

  def test_artist_name
    assert_equal("Oasis", @song_1.)
  end

end
