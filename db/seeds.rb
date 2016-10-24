# coding: windows-31j

@bbspost					= Bbspost.create
@bbspost.title		= '使い方'
@bbspost.username	= '説明する人'
@bbspost.content	= 'POSTから入力することで、ここに新しい順に羅列されます。これは最も古い投稿です。'
@bbspost.save

99.times do |n|
  username  = Faker::Lorem.characters(5)
  title = Faker::Lorem.characters(10)
  content = Faker::Lorem.sentence(5)
  Bbspost.create!( username: username,
               				title: title,
               			content: content)
end