data = {
    players: [
        {
          name: "Oliver",
          wins: 22
        },
        {
          name: "Renu",
          wins: 23
        }
    ]
}
puts data[:players][0][:name]
puts data[:players][1][:name]
# puts data[:players][2][:name]
puts data.dig(:players,0,:name )
puts data.dig(:players,2,:name)


print "---------------"
colour_theme = {
    primary_choice: [
        {
          name: "red",
          hex_value: "#ff5555"
        },
        {
          name: "blue",
          hex_value: "#3333ff"
        }
    ],
    fallback: [
      "snow", "gold", "teal"
    ]
}
puts colour_theme.dig(:primary_choice,1,:hex_value)
# Write your code here