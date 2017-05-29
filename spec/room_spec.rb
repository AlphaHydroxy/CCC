require( 'minitest/autorun' )
require_relative( '../room' )
require_relative( '../guest' )
require_relative( '../song' )

class TestRoom < MiniTest::Test

  def setup()
    guests = []
    @guest1 = Guest.new("Richard","Hendricks")
    @guest2 = Guest.new("Erlich","Bachman")
    @guest3 = Guest.new("Gavin","Belson")
    @guest4 = Guest.new("Jared","Dunn")
    guests.push(@guest1, @guest2, @guest3, @guest4)
    songs = []
    @song1 = Song.new("Poison", "Every Rose Has Its Thorn")
    @song2 = Song.new("Wiz Khalifa", "See You Again")
    @song3 = Song.new("Slipknot", "Before I Forget")
    @song4 = Song.new("High Contrast", "Remind Me")
    # songs.push(@song1, @song2, @song3, @song4)
    room1 = []
    room2 = []
    @rooms = Rooms.new(room1, room2)
  end

  def test_num_of_guests_in_room()
    assert_equal(0, @rooms.num_of_guests_in_room())
  end

  def test_num_of_songs_in_room()
    assert_equal(0, @rooms.num_of_songs_in_room())
  end

  def test_check_in_guest()
    @rooms.add_guest(@guest1, @guest2)
    assert_equal(2, @rooms.num_of_guests_in_room())
  end

  def test_add_song_to_room()
    @rooms.add_song(@song1, @song2)
    assert_equal(2, @rooms.num_of_songs_in_room())
  end

  def test_check_in_multiple_guests_add_songs_check_out_guest()
    @rooms.add_guest(@guest1, @guest2)
    assert_equal(2, @rooms.num_of_guests_in_room())
    @rooms.add_song(@song1, @song2)
    assert_equal(4, @rooms.num_of_songs_in_room())
    @rooms.remove_guest(@guest1)
    assert_equal(3, @rooms.num_of_guests_in_room())
  end

end