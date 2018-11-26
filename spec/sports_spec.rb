require('minitest/autorun')
require('minitest/rg')
require_relative('../sports')

class TestTeam < MiniTest::Test
  def test_new_team
    players = ['Betty','Gemma','Helen']
    team = Team.new('Allstars',players,'Bob')
    assert_equal('Allstars',team.name)
  end

  def test_new_player
    players = ['Betty','Gemma','Helen']
    team = Team.new('Allstars',players,'Bob')
    assert_equal(['Betty','Gemma','Helen','Roger'],team.new_player('Roger'))
  end

  def test_find_player__isthere
    players = ['Betty','Gemma','Helen']
    team = Team.new('Allstars',players,'Bob')
    assert_equal(true,team.find_player('Gemma'))
  end

  def test_find_player__isnotthere
    players = ['Betty','Gemma','Helen']
    team = Team.new('Allstars',players,'Bob')
    assert_equal(false,team.find_player('Cornelius'))
  end

  def test_points
    players = ['Betty','Gemma','Helen']
    team = Team.new('Allstars',players,'Bob')
    assert_equal(0,team.points)
  end

  def test_victory__true
    players = ['Betty','Gemma','Helen']
    team = Team.new('Allstars',players,'Bob')
    team.victory(true)
    assert_equal(1,team.points)
  end

  def test_victory__false
    players = ['Betty','Gemma','Helen']
    team = Team.new('Allstars',players,'Bob')
    team.victory(false)
    assert_equal(0,team.points)
  end
end
