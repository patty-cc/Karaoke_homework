class Room

  attr_reader(:room_number)

  def initialize ( room_number, capacity=5, entry_fee =30)
    @room_number = room_number
    @capacity = capacity
    @entry_fee = entry_fee
    @guests = []
    @song = []
  end

  def song_array_length
    return @song.count
  end

  def guest_array_length
    return @guests.count
  end

  def add_to_song_array(song)
    @song.push(song)
  end

  def check_in_guest(guest)
    if (@guests.length >= @capacity)
      return "No Entry"
    else
      @guests.push(guest)
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def room_entry_fee
    return @entry_fee
  end

  def entry_fee(guest)
    if (guest.money < @entry_fee)
      return "Not enough cash"
    end
  end


end
