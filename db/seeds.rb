# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding superheroes..."

ActiveRecord::Base.transaction do
  10.times do
    hero = Hero.create!(
        name: Faker::Name.name,
        super_name: Faker::Superhero.name
    )

    power = Power.create!(
        name: Faker::Superhero.power,
        description: Faker::Lorem.paragraph_by_chars(number: 20)
    )

    HeroPower.create!(
        strength: %w(Strong Weak Average).sample(1).first,
        power_id: power.id,
        hero_id: hero.id
    )
  end
end

puts "✅ Done seeding!"
