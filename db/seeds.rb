# coding: windows-31j

@bbspost					= Bbspost.create
@bbspost.title		= '�g����'
@bbspost.username	= '��������l'
@bbspost.content	= 'POST������͂��邱�ƂŁA�����ɐV�������ɗ��񂳂�܂��B����͍ł��Â����e�ł��B'
@bbspost.save

99.times do |n|
  username  = Faker::Lorem.characters(5)
  title = Faker::Lorem.characters(10)
  content = Faker::Lorem.sentence(5)
  Bbspost.create!( username: username,
               				title: title,
               			content: content)
end