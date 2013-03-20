if Rails.env.development?
  Subscription.destroy_all
  Post.destroy_all
  User.destroy_all
  
end


# create users

password = "hockey"
email = "email@email.com"
birthday =  Date.new(2013, 12, 10)

User.create username: "AnnaBanana",
	firstname: "Anna",
	lastname: "Banana",
	password: password,
	email: email,
	birthday: birthday
	
User.create	username: "bballplaya",
	firstname: "Bball",
	lastname: "Playa",
	password: password,
	email: email,
	birthday: birthday

User.create username: "ImACarebear",
	firstname: "Cheery",
	lastname: "Bear",
	password: password,
	email: email,
	birthday: birthday

User.create	username: "paperclip",
	firstname: "Paper",
	lastname: "Clip",
	password: password,
	email: email,
	birthday: birthday

User.create username: "fruitsnack",
	firstname: "Fruit",
	lastname: "Snack",
	password: password,
	email: email,
	birthday: birthday
	
User.create	username: "iluvgumdrops",
	firstname: "Mary",
	lastname: "Johnson",
	password: password,
	email: email,
	birthday: birthday
	
User.create username: "MrSmith",
	firstname: "John",
	lastname: "Smith",
	password: password,
	email: email,
	birthday: birthday
	
User.create	username: "JaneDoe",
	firstname: "Jane",
	lastname: "Doe",
	password: password,
	email: email,
	birthday: birthday

User.create	username: "BabyC",
	firstname: "Charlie",
	lastname: "Chiu",
	password: password,
	email: email,
	birthday: birthday
	
User.create username: "FiFi",
	firstname: "FiFi",
	lastname: "Dog",
	password: password,
	email: email,
	birthday: birthday	

banana = User.find_by_username("AnnaBanana")
bear = User.find_by_username("ImACarebear")
bball = User.find_by_username("bballplaya")
user4 = User.find_by_username("paperclip")
user5 = User.find_by_username("fruitsnack")
user6 = User.find_by_username("iluvgumdrops")
user7 = User.find_by_username("MrSmith")
user8 = User.find_by_username("JaneDoe")
user9 = User.find_by_username("BabyC")
user10 = User.find_by_username("FiFi")

# create posts

Post.create text: "Happy banana dance!", url: "http://24.media.tumblr.com/tumblr_mbeacveUWM1qg9iulo1_400.gif", user_id: banana.id
Post.create text: "I'm hungry for a banana split!", user_id: banana.id
Post.create text: "So Madddddd", url: "http://skosnymokiem.files.wordpress.com/2012/05/giant_banana.jpg?w=300&amp;h=250", user_id: banana.id
Post.create text: "Wooo Woooo!!!", url: "http://i280.photobucket.com/albums/kk171/AVAlydiaAVA/th_banana-split-har-dee-har.jpg", user_id: banana.id
Post.create text: "I want a puppy!", url: "http://24.media.tumblr.com/tumblr_me7sa5hJFq1qer48zo1_500.jpg", user_id: banana.id
Post.create url: "http://images2.fanpop.com/images/quiz/76246_1224119707026_400_300.jpg", user_id: bear.id
Post.create url: "http://img10.glitterfy.com/graphics/106/hey_girl_care_bear.gif", user_id: bear.id
Post.create url: "http://billypurgatory.files.wordpress.com/2012/07/care-bears-80s-toybox-2015051-369-354.jpg", user_id: bear.id
Post.create url: "http://data.whicdn.com/images/404998/20090301075125_large.jpg", user_id: bear.id
Post.create text: "Basketball was originally played with a soccer ball. The first balls made specifically for basketball were brown, and it was only in the late 1950s that Tony Hinkle, searching for a ball that would be more visible to players and spectators alike, introduced the orange ball that is now in common use. Dribbling was not part of the original game except for the bounce pass to teammates. Passing the ball was the primary means of ball movement. Dribbling was eventually introduced but limited by the asymmetric shape of early balls. Dribbling only became a major part of the game around the 1950s, as manufacturing improved the ball shape.", user_id: bball.id
Post.create text: "I love playing basketball!", user_id: bball.id
Post.create text: "3 out of 4 people make up 75% of the population.", user_id: user4.id
Post.create text: "A day for firm decisions! Or is it?", user_id: user4.id
Post.create text: "Boomerangs are coming back Ski slopes are going downhill but Exit signs are on the way out.", user_id: user4.id
Post.create url: "http://youtu.be/ctJJrBw7e-c", user_id: user9.id
Post.create url: "http://www.youtube.com/watch?v=wMr5RpHcS00&list=UUv8xS5Sf5EGlpTLTyvFvVLw&index=11", user_id: user9.id




# create subscriptions

User.limit(20).each do |subuser|
	if subuser.id != banana.id
		Subscription.create user_id: banana.id,
		subscriber_id: subuser.id
	end
end

User.limit(6).each do |subuser|
	if subuser.id != banana.id
		Subscription.create user_id: subuser.id,
		subscriber_id: banana.id
	end
end

User.limit(5).offset(1).each do |subuser|
	if subuser.id != bear.id && subuser.id != banana.id
		Subscription.create user_id: bear.id,
		subscriber_id: subuser.id
	end
end

User.limit(7).offset(1).each do |subuser|
	if subuser.id != bear.id && subuser.id != banana.id
		Subscription.create user_id: subuser.id,
		subscriber_id: bear.id
	end
end
