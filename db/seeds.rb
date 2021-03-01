# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = RestClient.get "https://api.sportsdata.io/v3/nba/scores/json/Players?key=#{ENV['FANTASY_API_KEY']}"

players = JSON.parse(response.body)

players.each do |player|
    Player.create(
        name: player["FanDuelName"],
        number: player["Jersey"].to_i,
        position: player["Position"],
        position_category: player["PositionCategory"],
        team: player["Team"],
        image: "https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/#{player["NbaDotComPlayerID"]}.png",
        nba_id: player["NbaDotComPlayerID"],
        api_id: player["PlayerID"],
        yahoo_id: player["YahooPlayerID"],
        rotowire_id: player["RotoWirePlayerID"],
        college: player["College"],

    )
end

User.create(name: "Ori", username: "Ori1", password: "123")

puts "Done!"