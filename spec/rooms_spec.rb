require('minitest/autorun')
require_relative('../Rooms.rb')
require_relative('../Guests.rb')
require_relative('../Song.rb')
# require_relative('../SongList.rb')

class TestRoom < MiniTest::Test

  def setup
    @room_1 = Room.new( 1, 6, 40)
    @person_1 = Guest.new("Iain", "Have you ever seen the rain", 40)
    @person_2 = Guest.new("Tommy", "Paradise City", 20)
    @song_1 = Song.new("Wonderwall", "Oasis")
    # song_2 = Songs.new("Cars", "Snow Patrol")
    # song_3 = Songs.new("Hello", "Adele")
    #
    # songlist = [song_1, song_2, song_3]
    #
    # songs_list = SongList.new( "Oasis mix", songlist)
    # @room_2 = Room.new( 5, songs_list )
  end

  def test_room_number
    assert_equal( 1 , @room_1.room_number)
  end

  def test_song_array_length
    assert_equal( 0 , @room_1.song_array_length)
  end

  def test_guest_array_length
    assert_equal( 0 , @room_1.guest_array_length)
  end

  def test_add_to_song_array
      @room_1.add_to_song_array(@song_1)
      assert_equal(1, @room_1.song_array_length)
  end

  def test_check_in_guest
    @room_1.check_in_guest(@person_1)
    assert_equal(1, @room_1.guest_array_length)
  end

  def test_check_out_guest
    @room_1.check_out_guest(@person_1)
    assert_equal(0, @room_1.guest_array_length)
  end

  def test_turn_away_if_full
    # arrange
    small_room = Room.new(1, 1)
    small_room.check_in_guest(@person_1)
    # act
    result = small_room.check_in_guest(@person_2)
    # assert
    assert_equal("No Entry", result)
    assert_equal(1, small_room.guest_array_length)
  end

  def test_amount_of_money
    assert_equal(20, @person_2.money)
  end

  def test_room_entry_fee
    assert_equal(40, @room_1.room_entry_fee)
  end

  def test_entry_fee
    room = Room.new(1, 1, 30)
    person = Guest.new("Colleen", "Maybe", 25)

    result = room.entry_fee(person)

    assert_equal("Not enough cash", result )
  end

end
