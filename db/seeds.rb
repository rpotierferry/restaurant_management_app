User.destroy_all
Restaurant.destroy_all
Review.destroy_all

user_1 = User.create!(email: "admin@mail.com", password: "123456")
user_2 = User.create!(email: "client1@mail.com", password: "123456")
user_3 = User.create!(email: "client2@mail.com", password: "123456")
user_4 = User.create!(email: "manager1@mail.com", password: "123456")
user_5 = User.create!(email: "manager2@mail.com", password: "123456")


Restaurant.create!(name: 'chez Roro', address: '28 rue la bas, 69600 Oullins', category: 'french', user_id: user_4.id, average_rating: 5)
Restaurant.create!(name: 'Le fieu', address: '89 rue de la frite, 59000 Lille', category: 'belgian', user_id: user_4.id, average_rating: 2.5)
Restaurant.create!(name: 'Osaka', address: '18 Grand Rue, 57000 Metz', category: 'japanese', user_id: user_4.id, average_rating: 4.5)
Restaurant.create!(name: 'Nouillecademy', address: '74 rue des Capucins', category: 'chinese', user_id: user_5.id, average_rating: 5)
Restaurant.create!(name: 'La cucina de la nona', address: '10 rue Grand-Mère, 88800 Vittel', category: 'italian', user_id: user_5.id, average_rating: 5)

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
