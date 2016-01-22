Role.delete_all
['admin', 'registered', 'banned', 'moderator'].each do |role|
  Role.create!(name: role)
end

User.delete_all
u1 = User.create!(email: "advi@advi.com", username:"advi2008", password: "password", role: Role.find_by(name: 'registered'), name: 'Advi Atique', user_location: 'Glasgow, G4 0PA',  user_img: File.open(File.join(Rails.root,"/public/user_profile/advi2008.jpg")))
u2 = User.create!(email: "alice@alice.com", username:"alice2008", password: "password", role: Role.find_by(name: 'registered'), name: 'Alice Atique', user_location: 'Glasgow, G4 0PA',  user_img: File.open(File.join(Rails.root,"/public/user_profile/alice2008.jpg")))
u3 = User.create!(email: "syed@syed.com", username:"infinite_syed", password: "password", role: Role.find_by(name: 'admin'), name: 'Syed Atique', user_location: 'Glasgow, G4 0PA',  user_img: File.open(File.join(Rails.root,"/public/user_profile/syed.jpg")))


Category.delete_all
c1 = Category.create!(name: "Personal items")
c2 = Category.create!(name: "Electrical equipment")
c3 = Category.create!(name: "Others")
c4 = Category.create!(name: "Baby/Kids Stuff")
c5 = Category.create!(name: "Computers")
c6 = Category.create!(name: "DVD, Blu-Ray & Videos")
c7 = Category.create!(name: "Tickets")
c8 = Category.create!(name: "Mobile Phones")
c9 = Category.create!(name: "Books")
c10 = Category.create!(name: "Jewellery & Watch")
c11 = Category.create!(name: "Cameras & Camcorders")
c12 = Category.create!(name: "Pets")


Lost.delete_all
l1 = Lost.create!(title: 'Car Key', lost_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'I have lost a set of keys, including a Toyota car key and 2 other keys in a holder and two supermarket(ASDA and TESCO) cards. If anyone finds it, please contact me asap.', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_car_key.jpeg")), category: c1, reward: 'Gift card with appreciation', user: u2)
l2 = Lost.create!(title: 'Harrods Teddy Toy', lost_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'I have lost a Harrods Teddy, It lelongs to my wee baby. It probably dropped off from the stroller while walking Richard Street last night. If anyone finds it, please contact me asap.', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_toy.jpg")), category: c4, reward: 'Gift card with appreciation', user: u2)
l3 = Lost.create!(title: 'Gretsch Resonator Guitar G9200 boxcar', lost_date: (DateTime.new(2016,01,10,02,00)), location: 'Richard Street, Glasgow', description: 'I have lost my Gretsch resonator g9200 boxcar Guitar while out drinking in Glasgow. Needless to say this is a disaster, it is in a black foamlike case and looks like the guitar pictured with a small modification. In the early hours of Sunday, I got off a bus in Camberwell and walked (or maybe took a bus) to the Gloucester Road area. I can not really remember what happened because I had too many drinks, but if you found a guitar in those sorts of areas or the route connecting them (or not) please get in touch! There are a couple of other items in the case and I would be happy to describe them to anyone who has found them. I also lost my hat and my phone (sony xperia sp) but finding them would be a bonus.', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_guiter.jpeg")), category: c1, reward: '£50 with appreciation', user: u2)
l4 = Lost.create!(title: 'Black Zen MP3 player', lost_date: (DateTime.new(2016,01,16,17,00)), location: 'Old Street, Glasgow', description: 'Lost a black Zen MP3 player on Friday night. Maybe on the 43 Bus from Old street? Reward for safe return.', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_zen.jpeg")), category: c2, reward: 'Gift card with appreciation', user: u2)
l5 = Lost.create!(title: 'Samsung NC10 Netbook', lost_date: (DateTime.new(2016,01,12,16,30)), location: 'Catford Street, Glasgow', description: 'Samsung NC10 Netbook - White - Taken from McDonalds, Catford Friday 8th jan approx 4.30pm. Was in blue sleeve inside small black laptop bag, sentimental stuffs inside. Reward for safe return.', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_laptop.jpeg")), category: c5, reward: 'Gift card with appreciation', user: u2)
l6 = Lost.create!(title: 'Longines La Grande Classique watch', lost_date: (DateTime.new(2016,01,04,16,30)), location: 'Catford Street, Glasgow', description: 'I lost my Longines La Grande Classique watch while cycling along Richard Street and over Blackfriars Bridge on Monday 4th January (I think it fell out of my pocket). The watch has great sentimental value to me, as it was my 21st Birthday Present from my late father. The strap is black, while the back of the watch itself is silver, and the watch face is white. Thank you for your help.', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_watch.jpeg")), category: c10, reward: '£100 reward payable to anyone who can return this to me, no questions asked.', user: u2)
l7 = Lost.create!(title: 'Rucksack with personal stuff in it.', lost_date: (DateTime.new(2016,01,11,16,30)), location: 'Mare Street, Glasgow', description: 'I left a black and brown rucksack in either The Cock Tavern (Mare Street) or the General Browning Club (under the Moth Club, just off Morning Lane) in Glasgow on Friday 11/01/16. It is mainly full of green school books that I am desperate to have returned. The staff at General Browning Club think someone picked it up thinking it was their friends. Please call, get in touch if you have any information or have it! ', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_rucksack.jpeg")), category: c1, reward: '£10 reward payable to anyone who can return this to me.', user: u2)
l8 = Lost.create!(title: 'Green Wallet', lost_date: (DateTime.new(2016,01,11,17,00)), location: 'Mare Street, Glasgow', description: 'I lost my green wallet in 453 bus heading toward Marlybone around 7:00pm. I rode from Westminster Bridge Rd to Portland Place. I have all my credit cards inside including my student ID', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_wallet.jpeg")), category: c3, reward: '£10 reward payable to anyone who can return this to me.', user: u2)
l9 = Lost.create!(title: 'Has Anyone Seen This Cat', lost_date: (DateTime.new(2016,01,01,17,00)), location: 'Horsham, Glasgow', description: 'Missing from Horsham ?? Has anyone seen this cat. His name is tommy. Dissappeared around January 2016. If seen please contact me. Thanks.', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_cat.jpeg")), category: c12, reward: '£10 reward payable to anyone who can return this to me.', user: u2)
l10 = Lost.create!(title: 'Canon EOS 6D DSLR', lost_date: (DateTime.new(2016,01,03,15,00)), location: 'Union Street, Glasgow', description: 'Lost a Canon DSLR with a brown casing at a small park in front of Houses of Glasgow City Council around 3.00 pm. Has many precious , irreplacable photos. Would greatly appreciate if returned, even if just the SD card- no questions asked. Thanks.', contact_info: 'Abby Wiseman, abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_camera.jpeg")), category: c11, reward: '£100 reward payable to anyone who can return this to me.', user: u2)
l11 = Lost.create!(title: 'Lego NinjaGo Blu-Ray', lost_date: (DateTime.new(2016,01,10,11,00)), location: 'Richmond Street, Glasgow', description: 'I lost a Lego NinjaGo Blu-Ray, brand new with receipt inside the bag, in Richard Street, Glasgow on last Monday around 11 am. I would greatly appreciate if returned - no questions asked. Thanks.', contact_info: 'abby@gmail.com, tel: 09878678675', reward: '£10 with appreciation', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lego.jpeg")), category: c6, user: u2)
l12 = Lost.create!(title: 'Samsung galaxy s6 Mobile phone', lost_date: (DateTime.new(2016,01,10,17,00)), location: 'Union Street, Glasgow', description: 'I lost a silver Samsung galaxy s6 Mobile phone at a small park in front of Union Street. Lost around 4-5pm. Network is Orange. I would greatly appreciate if returned - no questions asked. Thanks.', contact_info: 'abby@gmail.com, tel: 09878678675', reward: '£50 with appreciation', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_samsung.jpeg")), category: c8, user: u2)
l13 = Lost.create!(title: 'St. Cuthbert Gospel, a precious Book', lost_date: (DateTime.new(2016,01,10,17,00)), location: 'Union Street, Glasgow', description: 'I lost a very old book at a small park in front of Union Street. Lost around 4-5pm. It is a 900-year old copy of the St. Cuthbert Gospel. This is one of the rare European books, which still exists in entirety and doesn’t not bear the signs of aging those others books of its kind usually do. The original leather cover and pages inside are in top notch condition still. I would greatly appreciate if returned - no questions asked. Thanks.', reward: '£500 with appreciation', contact_info: 'abby@gmail.com, tel: 09878678675', lost_img: File.open(File.join(Rails.root,"/public/Lost_image/lost_book.jpg")), category: c8, user: u2)











Found.delete_all
f1 = Found.create!(title: 'Car Key', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'Found a set of keys, including a car keys and 6 other key in a holder and two supermarket cards. Please contact me and describe more. Then we can arrange for return the stuff.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_car_key.jpeg")), category: c1, user: u2)
f2 = Found.create!(title: 'Silver Bracelet', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'A thin silver coloured bracelet with a name on the back. Uploaded image is a lookalike. Please contact me for varification. Then we can arrange for return the stuff.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_bracelet.jpeg")), category: c10, user: u2)
f3 = Found.create!(title: 'Wallet', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'A Wallet found on the St Mungo Street, Glasgow yesterday. Uploaded image is a lookalike. Please contact me and describe more. Then we can arrange for return the stuff.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_wallet.jpeg")), category: c1, user: u2)
f4 = Found.create!(title: 'Peppa Pig Toy', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'I found an Peppa Pig Toy on Richmond Hill, Glasgow yesterday. I suppose some kid might have lost it. Please contact me for collection.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_peppapig.jpg")), category: c4, user: u2)
f5 = Found.create!(title: 'Iphone 6s Mobile phone', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'I found a black IPhone 6s in the back of a cab last Sunday and the cab driver said hand it to local police. I am going to try for one more week to see if someone will claim it. I am sending it on to the local Police Station as I am from the Glasgow West. Found around 3-5am. Network is Orange. Thanks.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_iphone.jpg")), category: c8, user: u2)
f6 = Found.create!(title: 'LG G2 Mobile Phone', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'Found a LG G2 in Angel black cab last night, want to return it to its owner. Please contact me and describe more. Then we can arrange for return the stuff.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_lg.jpg")), category: c8, user: u2)
f7 = Found.create!(title: 'Matlab Software DVD', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richmond Street, Glasgow', description: 'I found a DVD containing Matlab Software in Richard Street, Glasgow on last Monday around 11 pm. I know its very expensive one. If rightful owner wants it back please contact me by email.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_matlab.jpeg")), category: c6, user: u2)
f8 = Found.create!(title: 'Richard Marx Self-Titled Signed Autographed LP Record Album', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'Found a vintage Richard Marx Self-Titled Signed Autographed LP Record Album in the Richard Street, Glasgow yesterday afternoon. Its in a very good condition. If you looking for it, then please contact me. Then we can arrange for return the stuff.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_richardmarx.jpeg")), category: c6, user: u2)
f9 = Found.create!(title: 'Sony FDR AX100E Camcorder', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'Found a large pink bag containing a Sony FDR AX100E Camcorder and children birthday cards and workbooks. If you looking for it, then please contact me. Then we can arrange for return the stuff.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_sony.jpeg")), category: c11, user: u2)
f10 = Found.create!(title: 'White Cat', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'I found a cat in our garden, cambusnethan area. Its a 2-3 years old white cat. If anyone looking for him would you contact me. Kind regards Angela Gratton.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_cat.jpeg")), category: c12, user: u2)
f11 = Found.create!(title: 'Nike Backpack with ipad mini', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'A Nike Backpack with a bill, Blouse, Skirt, Ruled book, ipad mini found on the train Glasgow to Edinburgh, 12 pm service, under the seat on the Coach B. Plan to handover to the Glasgow station.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_nike.jpeg")), category: c1)
f12 = Found.create!(title: 'Mens 925gps C2 gold plated ring', found_date: (DateTime.new(2016,01,10,17,00)), location: 'Richard Street, Glasgow', description: 'Mens 925gps C2 gold plated ring found, will not describe on here for obvious reasons but if anyone can describe the ring I found then you will be the rightful owner. I know if I had lost one of mine I would like to know that it was trying to find me! It is an expensive looking ring hence wanting it to be reunited with its owner. I am sure it has sentimental value. If you looking for it, then please contact me. Then we can arrange for return the stuff.', contact_info: 'abby@gmail.com, tel: 09878678675', found_img: File.open(File.join(Rails.root,"/public/Found_image/found_men_ring.jpeg")), category: c6, user: u2)







