require 'faker'

10.times do
    city = City.create(name: Faker::Address.city)
end

10.times do
    dogsitter = Dogsitter.create(name: Faker::Artist.name, city_id: City.ids.sample)
    end

10.times do
    dog = Dog.create(name: Faker::Creature::Dog.name, city_id: City.ids.sample)
end

10.times do
    stroll = Stroll.create(date: Faker::Date.forward(100), city_id: City.ids.sample, dogsitter_id: Dogsitter.ids.sample)
end

10.times do
    joindogstroll = JoinDogStroll.create(dog_id: Dog.ids.sample, stroll_id: Stroll.ids.sample)
end