# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

big_string = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Vivamus vel finibus ante. Etiam suscipit efficitur dictum. 
Pellentesque nisl lectus, vestibulum eu ultricies a, vulputate 
eget magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Mauris nec massa pharetra, mollis sapien vitae, sagittis leo. 
Vivamus maximus sem nec lectus lacinia, quis sagittis nunc imperdiet. 
Pellentesque ut tristique neque.

Nulla aliquam consectetur purus, et varius nisl hendrerit vel. Nullam 
rhoncus pellentesque tincidunt. Donec tincidunt, nisl in la
cinia aliquet, elit ipsum blandit nunc, interdum suscipit lacus
 nibh quis augue. Integer condimentum volutpat est, sit amet aliquam 
 nisi vulputate ac. Sed pharetra magna justo, ac imperdiet null
 a sodales ut. Proin in risus malesuada nunc accumsan tempor ut non era
 t. Vivamus fermentum libero vel urna consectetur ornare.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere 
cubilia Curae; Nullam iaculis pulvinar lacus sed lacinia. S
ed quis lorem dignissim, posuere mi vel, pretium lacus. Vivamus
 dictum efficitur lectus quis dictum. Sed gravida a lectus luctus pha
 retra. Cras pellentesque vehicula ultrices. Sed aliquet erat s
 ed eros tincidunt egestas. Praesent congue lectus orci, in gravida neq
 ue consequat sed. Nullam placerat tincidunt laoreet.

Nam nunc arcu, dictum et sagittis sit amet, finibus in massa. 
In a bibendum nibh. Nullam a nisl ac leo lacinia elementum 
nec in nibh. Maecenas tellus ligula, ullamcorper sed laoreet eg
et, vehicula ac urna. Suspendisse posuere urna eget leo sollicitudin 
lacinia. Vivamus eleifend mi a elit blandit fermentum. Donec a
 blandit massa. Nullam feugiat nulla pharetra nisl facilisis, id portt
 itor nulla efficitur. Suspendisse volutpat nunc dolor, quis facilisis 
 quam tempor vel. Curabitur lobortis tellus ut consequat laoreet. 
 Nunc a ullamcorper nibh. Vestibulum ante ipsum primis in faucibus 
 orci luctus et ultrices posuere cubilia Curae; Donec id augue quis 
 elit euismod consectetur ut vitae arcu. Nullam cursus mauris sit 
 amet porta aliquet. Etiam commodo aliquam diam. Pellentesque dolor 
 libero, vehicula eget urna convallis, porta condimentum dui.

Morbi efficitur nunc in enim congue, et ultrices purus varius. Integer 
scelerisque vulputate metus at lacinia. Vestibulum ante ipsum primis in
 faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas mollis, 
 dui maximus porttitor dapibus, mi ligula euismod diam, eget convallis quam 
 metus quis justo. Vestibulum efficitur dapibus leo sed pellentesque. 
 In efficitur nisi sit amet eros convallis laoreet ut at nisi. Integer ve
 l ante justo. Phasellus quis orci et est semper ultricies elementum id eros. 
 In quis auctor nunc. Ut tincidunt, justo in ultrices volutpat, tellus urna 
 volutpat neque, quis feugiat tortor elit faucibus nibh.
".split("\n").join(' ')



(1..50).each do |i|
		book = Book.create title: "Book #{i}", description: "this the #{i}'s book description",
		price: rand(1..40),  date: DateTime.now

		if(i % 2 == 0)
			rand(1...10).times do 
				book.reviews.create(review: big_string[0...rand(30..200)], rating: rand(1...5))
			end
		end

end 
