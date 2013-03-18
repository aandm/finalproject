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
Post.create url: "http://images1.fanpop.com/images/photos/1800000/Care-Bears-Wallpaper-80s-toybox-1886570-1024-768.jpg", user_id: bear.id
Post.create url: "http://data.whicdn.com/images/404998/20090301075125_large.jpg", user_id: bear.id
Post.create text: "Basketball was originally played with a soccer ball. The first balls made specifically for basketball were brown, and it was only in the late 1950s that Tony Hinkle, searching for a ball that would be more visible to players and spectators alike, introduced the orange ball that is now in common use. Dribbling was not part of the original game except for the bounce pass to teammates. Passing the ball was the primary means of ball movement. Dribbling was eventually introduced but limited by the asymmetric shape of early balls. Dribbling only became a major part of the game around the 1950s, as manufacturing improved the ball shape.", user_id: bball.id
Post.create text: "I love playing basketball!", user_id: bball.id
Post.create text: "3 out of 4 people make up 75% of the population.", user_id: user4.id
Post.create text: "Accomplishing the impossible means only that the boss will add it to your regular duties.", user_id: user4.id
Post.create text: "A chicken is an egg's way of making another egg", user_id: user4.id
Post.create text: "A day for firm decisions! Or is it?", user_id: user4.id
Post.create text: "Boomerangs are coming back Ski slopes are going downhill but Exit signs are on the way out.", user_id: user4.id
Post.create text: "A device that will cut your fuel bills in half - scissors.", user_id: user5.id
Post.create text: "A dog is a dog unless he is facing you. Then he is Mr. Dog.", user_id: user5.id
Post.create text: "Always try to make other people happy even if you have to leave them alone to do it ", user_id: user5.id
Post.create text: "A neat desk is a sign of a cluttered desk drawer.", user_id: user5.id
Post.create text: "A sentence is something you should never put a preposition at the end of.", user_id: user5.id
Post.create text: "A signature always reveals a man's character - and sometimes even his name.", user_id: user5.id
Post.create text: "A sine curve goes off to infinity or at least to the end of the blackboard.", user_id: user5.id
Post.create text: "A sure cure for seasickness is to sit under a tree.", user_id: user5.id
Post.create text: "All my life I wanted to be someone. I guess I should have been more specific.", user_id: user5.id
Post.create text: "Anyone who isn't confused really doesn't understand the situation. ", user_id: user5.id
Post.create text: "Always remember you're unique just like everyone else.", user_id: user5.id
Post.create text: "Artificial intelligence is no match for natural stupidity.", user_id: user5.id
Post.create text: "Beauty is only skin deep but ugly goes right to the bone.", user_id: user6.id
Post.create text: "Breaking the law of gravity isn't painful, it's getting caught that hurts. ", user_id: user6.id
Post.create text: "Caution: do not look into laser with remaining eye.", user_id: user6.id
Post.create text: "Change is inevitable except from a vending machine.", user_id: user6.id
Post.create text: "Democracy is four wolves and a lamb voting on what to have for lunch.", user_id: user6.id
Post.create text: "Did you know the word gullible is not in the dictionary?", user_id: user6.id
Post.create text: "Don't personify computers - we don't like it.", user_id: user6.id
Post.create text: "Don't use a big word where a diminutive one will suffice. ", user_id: user6.id
Post.create text: "Don't worry about avoiding temptation - as you grow older it starts avoiding you.", user_id: user6.id
Post.create text: "Don't worry about the world ending today it's already tomorrow in Australia", user_id: user6.id
Post.create text: "Everyone has a photographic memory some just don't have film.", user_id: user7.id
Post.create text: "Everyone is someone else's weirdo.", user_id: user7.id
Post.create text: "Experience is something you get just after you need it. ", user_id: user7.id
Post.create text: "Give a man a fish and you feed him for a day. Teach a man to fish and you can sell him some tackle.", user_id: user7.id
Post.create text: "Grandma used to say Money is not the key to happiness. If you have money you can always have a key made.", user_id: user7.id
Post.create text: "He who laughs last didn't understand the joke ", user_id: user8.id
Post.create text: "How do you tell when you run out of invisible ink?", user_id: user8.id
Post.create text: "I am not young enough to know everything.", user_id: user9.id
Post.create text: "I didn't say it was your fault. I said I was going to blame you.", user_id: user9.id
Post.create text: "I refuse to have a battle of wits with an unarmed opponent.", user_id: user9.id
Post.create text: "I used to be indecisive now I'm not so sure.", user_id: user9.id
Post.create text: "I wonder how much deeper the ocean would be without sponges", user_id: user10.id
Post.create text: "If you tell the truth you don't have to remember anything.", user_id: user10.id

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
