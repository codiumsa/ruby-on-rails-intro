require 'rspec'
require 'rspec/its'

require_relative '../team_players_solution.rb'

describe "Rspec para clases" do

  context "check player instances" do
    subject(:player) { Player.new("Juan", 11, 3) }

    it "missing name" do
      is_expected.to respond_to(:name)
    end

    it "missing age" do
      is_expected.to respond_to(:age)
    end

    it "missing skill_level" do
      is_expected.to respond_to(:skill_level)
    end

  end

  context "check Team class methods" do
    subject(:team) { Team }

    it "missing method class teams_quantity" do
      is_expected.to respond_to(:teams_quantity)
    end
  end

  context "check teams instances" do
    subject (:team) {red_team = Team.new("Red")}

    it "respond to splat method" do
      is_expected.to respond_to(:add_players).with_unlimited_arguments
    end
  end

  context "check results" do
    player1 = Player.new("Bob", 13, 5); player2 = Player.new("Jim", 15, 4.5)
    player3 = Player.new("Mike", 21, 5) ; player4 = Player.new("Joe", 14, 5)
    player5 = Player.new("Scott", 16, 3)

    red_team = Team.new("Red");
    red_team.add_players(player1, player2, player3, player4, player5)

    elig_players = red_team.select {|player| (14..20) === player.age }.reject {|player| player.skill_level < 4.5}

    it "unexpected search result" do
      expect(elig_players.size).to eq 2
    end
  end
end
