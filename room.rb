class Rooms
  def initialize(room1, room2)
    @room1 = []
    @room2 = []
  end

  def num_of_guests_in_room()
    return @room1.count
  end

  def num_of_songs_in_room()
    return @room1.count
  end

  def add_guest(guest1, guest2)
    @room1.push(guest1, guest2)
  end

  def add_song(song1, song2)
    @room1.push(song1, song2)
  end

  def remove_guest(guest)
    @room1.delete(guest)
  end

end