require( 'minitest/autorun' )
require_relative( '../song' )

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Poison", "Every Rose Has Its Thorn")
    @song2 = Song.new("Wiz Khalifa", "See You Again")
    @song3 = Song.new("Slipknot", "Before I Forget")
    @song4 = Song.new("High Contrast", "Remind Me")
  end

  def test_artist_poison()
    assert_equal("Poison", @song1.artist())
  end

  def test_title_every_rose()
    assert_equal("Every Rose Has Its Thorn", @song1.title())
  end

  def test_artist_wiz()
    assert_equal("Wiz Khalifa", @song2.artist())
  end

  def test_title_ad()
    assert_equal("See You Again", @song2.title())
  end

  def test_artist_slipknot()
    assert_equal("Slipknot", @song3.artist())
  end

  def test_title_before()
    assert_equal("Before I Forget", @song3.title())
  end

  def test_artist_high()
    assert_equal("High Contrast", @song4.artist())
  end

  def test_title_remind()
    assert_equal("Remind Me", @song4.title())
  end

end