User.destroy_all

user_1 = User.create!(email: "admin@mail.com", password: "123456")
user_2 = User.create!(email: "client1@mail.com", password: "123456")
user_3 = User.create!(email: "client2@mail.com", password: "123456")
user_4 = User.create!(email: "manager1@mail.com", password: "123456")
user_5 = User.create!(email: "manager2@mail.com", password: "123456")


Restaurant.create!(name: 'chez Roro', address: '28 rue la bas, 69600 Oullins', category: 'french', user_id: user_4.id, average_rating: 5)
file = URI.open("https://images.unsplash.com/photo-1517248135467-4c7edcad34c4")
Restaurant.last.photo.attach(io: file, filename:"resto1")
p "resto created"

Restaurant.create!(name: 'Le fieu', address: '89 rue de la frite, 59000 Lille', category: 'belgian', user_id: user_4.id, average_rating: 2.5)
file = URI.open("https://www.bullerestaurantfourviere.fr/public/img/big/DSC85941jpg_632743ed30e34.jpg")
Restaurant.last.photo.attach(io: file, filename:"resto2")
p "resto created"

Restaurant.create!(name: 'Osaka', address: '18 Grand Rue, 57000 Metz', category: 'japanese', user_id: user_4.id, average_rating: 4.5)
file = URI.open("https://restaurantbon.fr/wp-content/uploads/2023/11/Chez-Bon-x-Studio-Vanssay-81-scaled.jpg")
Restaurant.last.photo.attach(io: file, filename:"resto3")
p "resto created"

Restaurant.create!(name: 'Nouillecademy', address: '74 rue des Capucins', category: 'chinese', user_id: user_5.id, average_rating: 5)
file = URI.open("https://res.cloudinary.com/tf-lab/image/upload/restaurant/e9bfc26c-7c55-4e05-833e-10bdfee1f64d/bcb126fb-8342-470e-9fbe-e620681963de.jpg")
Restaurant.last.photo.attach(io: file, filename:"resto4")
p "resto created"

Restaurant.create!(name: 'La cucina de la nona', address: '10 rue Grand-Mère, 88800 Vittel', category: 'italian', user_id: user_5.id, average_rating: 5)
file = URI.open("https://assets-global.website-files.com/64f5c748cfa0440342311a7e/653a1a8cbf2d0ba06f8e4e44_21-lenarcisseblanc-hotel-paris-restaurant-full.jpg")
Restaurant.last.photo.attach(io: file, filename:"resto1")
p "resto created"

review = Review.create!(
  content: "C'était très bon",
  rating: 5,
  restaurant_id: Restaurant.first.id,
  user_id: user_2.id
)
Review.create!(
  content: "Au top!",
  rating: 5,
  restaurant_id: Restaurant.first.id,
  user_id: user_3.id
)
Review.create!(
  content: "bof, bof",
  rating: 3,
  restaurant_id: Restaurant.second.id,
  user_id: user_2.id
)
Review.create!(
  content: "Trop gras",
  rating: 2,
  restaurant_id: Restaurant.second.id,
  user_id: user_3.id
)
Review.create!(
  content: "Authentique !!",
  rating: 5,
  restaurant_id: Restaurant.third.id,
  user_id: user_2.id
)
Review.create!(
  content: "Pas mal du tout",
  rating: 4,
  restaurant_id: Restaurant.third.id,
  user_id: user_3.id
)
Review.create!(
  content: "ça pique !",
  rating: 5,
  restaurant_id: Restaurant.fourth.id,
  user_id: user_2.id
)
Review.create!(
  content: "délicieux !!",
  rating: 5,
  restaurant_id: Restaurant.fourth.id,
  user_id: user_3.id
)

Review.create!(
  content: "Comme dans mes souvenirs",
  rating: 5,
  restaurant_id: Restaurant.fifth.id,
  user_id: user_2.id
)
Review.create!(
  content: "Génial !!",
  rating: 5,
  restaurant_id: Restaurant.fifth.id,
  user_id: user_3.id
)
