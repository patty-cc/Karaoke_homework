require('minitest/autorun')
require_relative('../Guests.rb')

class GuestTest < MiniTest::Test

  def setup
  end

  def test_guest_name
    guest_1 = Guest.new("Iain", "Have you ever seen the rain")
    assert_equal("Iain", guest_1.name)
  end

  def test_guest_song
    guest_1 = Guest.new("Iain", "Have you ever seen the rain")
    assert_equal("Have you ever seen the rain", guest_1.fav_song)
  end

end
