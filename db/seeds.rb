# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

puts "Cleaning Database..."
Restaurant.destroy_all
puts "Database cleaned..."

puts 'Creating restaurants...'

pitaya_photo = URI.open("https://images.unsplash.com/photo-1617093727343-374698b1b08d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
pitaya = Restaurant.new(
  name: "Pitaya",
  category: "Thaïlandaise",
  address: "66 rue Béthune, 59000 LILLE",
  description: "Le temps d’un repas partez à la découverte de la Thaïlande à travers cette cuisine authentique, colorée et créative.
  La street food Pitaya, une cuisine spectacle comme en Thaïlande.",
  chief: "Paul"
)
pitaya.photo.attach(io: pitaya_photo, filename: "pitaya")
pitaya.save!

il_ristorante_photo = URI.open("https://images.unsplash.com/photo-1616299915952-04c803388e5f?q=80&w=1962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
il_ristorante = Restaurant.new(
  name: "Il Ristorante",
  category: "Italienne",
  address: "avenue Boutillerie, 59320 SEQUEDIN",
  description: "Il Ristorante vous invite à un savoureux voyage au coeur de l’Italie authentique.
  Goûtez les trésors gustatifs de la cuisine italienne traditionnelle au sein d’une ambiance contemporaine…",
  chief: "Mario"
)
il_ristorante.photo.attach(io: il_ristorante_photo, filename: "il_ristorante")
il_ristorante.save!

mamounia_photo = URI.open("https://images.memphistours.com/large/50ecfbf7bf534a7c8ef7b8ab888a2265.jpg")
mamounia = Restaurant.new(
  name: "La Mamounia",
  category: "Marocaine",
  address: "165 rue des Postes, 59000 LILLE",
  description: "Les spécialités qui ont fait la réputation de la Mamounia et notamment ses savoureux tajines et couscous, sont toujours
  présentes et préparées à partir de produits frais et d’ingrédients de qualité.",
  chief: "Zaïm"
)
mamounia.photo.attach(io: mamounia_photo, filename: "mamounia")
mamounia.save!

puts '...finished!'
