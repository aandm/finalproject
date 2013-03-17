if Rails.env.development?
  User.destroy_all
  Post.destroy_all
  Group.destroy_all
  Subscription.destroy_all
  GroupMember.destroy_all
end

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
	
User.create username: "ImACarebear",
	firstname: "Cheery",
	lastname: "Bear",
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

banana = User.find_by_username("AnnaBanana")
bear = User.find_by_username("ImACarebear")
bball = User.find_by_username("bballplaya")
baby = User.find_by_username("BabyC")

Post.create text: "Happy banana dance!",
	url: "http://24.media.tumblr.com/tumblr_mbeacveUWM1qg9iulo1_400.gif",
	user_id: banana.id

Post.create text: "No image for this banana!",
	user_id: banana.id

Post.create text: "So Madddddd",
	url: "http://spitfirelist.com/wp-content/uploads/2012/04/Tough-Banana.jpg",
	user_id: banana.id

Post.create text: "Woo Woo!!!",
	url: "http://3.bp.blogspot.com/-_eOAyAjt_n4/TVNoSHpVijI/AAAAAAAABh4/9XpqcOAbaWU/s1600/Banana.jpg",
	user_id: banana.id

Post.create text: "I want a puppy!",
	url: "http://24.media.tumblr.com/tumblr_me7sa5hJFq1qer48zo1_500.jpg",
	user_id: banana.id

Post.create url: "http://images2.fanpop.com/images/quiz/76246_1224119707026_400_300.jpg",
	user_id: bear.id

Post.create url: "http://img10.glitterfy.com/graphics/106/hey_girl_care_bear.gif",
	user_id: bear.id

Post.create url: "http://billypurgatory.files.wordpress.com/2012/07/care-bears-80s-toybox-2015051-369-354.jpg",
	user_id: bear.id

Post.create url: "http://images1.fanpop.com/images/photos/1800000/Care-Bears-Wallpaper-80s-toybox-1886570-1024-768.jpg",
	user_id: bear.id

Post.create url: "http://data.whicdn.com/images/404998/20090301075125_large.jpg",
	user_id: bear.id

Post.create text: "Basketball was originally played with a soccer ball. The first balls made specifically for basketball were brown, and it was only in the late 1950s that Tony Hinkle, searching for a ball that would be more visible to players and spectators alike, introduced the orange ball that is now in common use. Dribbling was not part of the original game except for the bounce pass to teammates. Passing the ball was the primary means of ball movement. Dribbling was eventually introduced but limited by the asymmetric shape of early balls. Dribbling only became a major part of the game around the 1950s, as manufacturing improved the ball shape.",
	user_id: bball.id

Post.create text: "I love playing basketball!",
	user_id: bball.id

Post.create text: "I want a kitty!",
	url: "http://youtu.be/ctJJrBw7e-c",
	user_id: baby.id
	
Group.create group_name: "Friends",
	user_id: baby.id
	
Group.create group_name: "Family",
	user_id: baby.id

Subscription.create user_id: bear.id,
	subscriber_id: baby.id
	
Subscription.create user_id: baby.id,
	subscriber_id: banana.id

friends = Group.find_by_group_name("Friends")

GroupMember.create group_id: friends.id,
	member_id: banana.id