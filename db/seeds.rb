# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# BASE SET #######################################

Deck.destroy_all
Instance.destroy_all
Response.destroy_all

base_json = File.read("./cah/base.json")
base_deck = JSON.parse(base_json)
base_instances = base_deck["blackCards"]
base_responses = base_deck["whiteCards"]


d1 = Deck.create :name => "Base Set"

base_instances.each do |instance|
  if instance["pick"] == 1
    Instance.create(:card => instance["text"], :deck_id => d1.id)
  end
end

base_responses.each do |response|
  Response.create(:card => response, :deck_id => d1.id)
end

# FIRST EXPANSION ###################################

first_exp_json = File.read("./cah/first_exp.json")
first_exp_deck = JSON.parse(first_exp_json)
first_exp_instances = first_exp_deck["blackCards"]
first_exp_responses = first_exp_deck["whiteCards"]

d2 = Deck.create :name => "The First Expansion"

first_exp_instances.each do |instance|
  if instance["pick"] == 1
    Instance.create :card => instance["text"], :deck_id => d2.id
  end
end

first_exp_responses.each do |response|
  Response.create :card => response, :deck_id => d2.id
end

# SECOND EXPANSION ####################################

second_exp_json = File.read("./cah/second_exp.json")
second_exp_deck = JSON.parse(second_exp_json)
second_exp_instances = second_exp_deck["blackCards"]
second_exp_responses = second_exp_deck["whiteCards"]

d3 = Deck.create :name => "The Second Expansion"

second_exp_instances.each do |instance|
  if instance["pick"] == 1
    Instance.create :card => instance["text"],  :deck_id => d3.id
  end
end

second_exp_responses.each do |response|
  Response.create :card => response, :deck_id => d3.id
end

# HACKERS ################################################

hackers_json = File.read("./cah/hackers.json")
hackers_deck = JSON.parse(hackers_json)
hackers_instances = hackers_deck["blackCards"]
hackers_responses = hackers_deck["whiteCards"]

d4 = Deck.create :name => "Hackers Expansion"

hackers_instances.each do |instance|
  if instance["pick"] == 1
    Instance.create :card => instance["text"], :deck_id => d4.id
  end
end

hackers_responses.each do |response|
  Response.create :card => response, :deck_id => d4.id
end
