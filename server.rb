require 'sinatra'

require "sinatra/reloader" if development?
require "pry" if development? || test?

set :bind, '0.0.0.0'

recipe = {
  name: "Roasted Brussels Sprouts",
  ingredients: [
    "1 1/2 pounds Brussels sprouts",
    "3 tablespoons good olive oil",
    "3/4 teaspoon kosher salt",
    "1/2 teaspoon freshly ground black pepper"
  ],
  directions: [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
  ]
}

reviews = [
  {username: "cdwhitt91", rating: 5, review: "If I could rate higher, I would!"},
  {username: "chrubymaster", rating: 2, review: "These are not very good. I wouldn't make them again."},
  {username: "burgermeister99", rating: 4, review: "Normally I'm just a burger guy. These were pretty good and I'd eat them again."},
  {username: "poke-bowl-er", rating: 1, review: "Pure garbage. Awful."},
  {username: "templecat45", rating: 5, review: "Fantastic! I can't wait to eat them again."},
  {username: "booboobiscuits123", rating: 3, review: "They were just ok. I doubt I'd eat these again."}
]


get '/' do
  @name = recipe[:name]
  @ingredients = recipe[:ingredients]
  @directions = recipe[:directions]
  @reviews = reviews

  erb :index
end
