require( 'minitest/autorun' )
require_relative( '../guest' )

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Richard","Hendricks")
    @guest2 = Guest.new("Erlich","Bachman")
    @guest3 = Guest.new("Gavin","Belson")
    @guest4 = Guest.new("Jared","Dunn")
  end

  def test_firstname_richard()
    assert_equal("Richard", @guest1.firstname())
  end

  def test_surname_hendricks()
    assert_equal("Hendricks", @guest1.surname())
  end

  def test_firstname_erlich()
    assert_equal("Erlich", @guest2.firstname())
  end

  def test_surname_bachman()
    assert_equal("Bachman", @guest2.surname())
  end

  def test_firstname_gavin()
    assert_equal("Gavin", @guest3.firstname())
  end

  def test_surname_belson()
    assert_equal("Belson", @guest3.surname())
  end

  def test_firstname_jared()
    assert_equal("Jared", @guest4.firstname())
  end

  def test_surname_dunn()
    assert_equal("Dunn", @guest4.surname())
  end

end