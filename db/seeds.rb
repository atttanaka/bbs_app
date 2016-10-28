# -*- coding: utf-8 -*-


lastname = %w[山田 中山 富井 中村 伊藤 西野条 川田 ガンビレグ 天上天下 殺意の波動に目覚めた]
firstname = %w[太郎 次郎 花子 東京太郎 愛保 世歩玲 賢一郎 幻の銀侍 野風平蔵重親 泡姫]

firstcontent = %w[今日は 今日も 昨日は 昨日も 明日は 明日も ここのところ いつものことながら いつもグチるけど さっそくだけど]

lastcontent = %w[高い 邪魔だ うざい おいしい 蹴られている 落ちていた どこかにいった ！？]

secondcontent = %w[肉が 魚が パソコンが 電飾が お食事券が 炭酸飲料が 家庭用ゲーム機が]

palpha = ["。","について","","だけど","の話","！！！","について語る","と私"]

99.times do |n|
  username  = lastname.sample + " " + firstname.sample

	title = secondcontent.sample
  content = firstcontent.sample + title + lastcontent.sample
	title = title[0..-2]
#	title.slice!(title.length - 1)
	title += palpha.sample

@bbspost = Bbspost.new
@bbspost.title		= title
@bbspost.username	= username
@bbspost.content	= content
@bbspost.save

end


@bbspost					= Bbspost.create
@bbspost.title		= '使い方'
@bbspost.username	= '説明する人'
@bbspost.content	= 'POSTから入力することで、ここに新しい順に羅列されます。これは50番目の投稿です。'
@bbspost.save