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

end
