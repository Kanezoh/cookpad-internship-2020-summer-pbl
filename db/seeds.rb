Tag.create(name: '和食')
Tag.create(name: '韓国料理')
Tag.create(name: 'イタリア料理')
Tag.create(name: 'フレンチ')
Tag.create(name: '中華料理')
Tag.create(name: 'ジビエ')
Tag.create(name: 'スイーツ')
Tag.create(name: '海鮮系')
Tag.create(name: '煮物')
Tag.create(name: '麺')
Tag.create(name: '酸っぱい')
Tag.create(name: '辛い')
Tag.create(name: 'ガッツリ')
Tag.create(name: 'あっさり')
Tag.create(name: '時短')
Tag.create(name: '和風')

Recipe.create(title: '簡単でお手軽！明太子パスタ', 
              description: 'チャチャっと手軽に作れる明太子パスタです。バターと生クリームが味の秘訣！',
              howto: "1. 鍋に水と塩(適量)を入れて沸騰したらパスタを茹でます（塩は、水１ℓあたり、小さじ１）\n2. 材料をかき混ぜてタレを作っておきます。\n3. 明太子とバターと生クリームを絡めます、完成！",
              img_path: '/recipes/image-1.jpg')

Ingredient.create(name: 'パスタ', quantity: '2束', amazon_id: 'B07YDJJNLY', recipe_id: 1)
Ingredient.create(name: 'のり', quantity: '適量', amazon_id: 'B01IP2V4CW',recipe_id: 1)
Ingredient.create(name: '大葉', quantity: '適量', amazon_id: 'B01J6Y8GBU',recipe_id: 1)
Ingredient.create(name: '明太子', quantity: '70g', amazon_id: 'B01MXKH966',recipe_id: 1)
Ingredient.create(name: 'バター', quantity: '大さじ2', amazon_id: 'B06WGTYJ1P',recipe_id: 1)
Ingredient.create(name: '牛乳', quantity: '大さじ2', amazon_id: 'B01LXZARKE',recipe_id: 1)

RecipeTag.create(recipe_id: 1, tag_id: 16)
RecipeTag.create(recipe_id: 1, tag_id: 3)
RecipeTag.create(recipe_id: 1, tag_id: 10)
RecipeTag.create(recipe_id: 1, tag_id: 15)

Recipe.create(title: '海の幸がたっぷり！ピチピチ海鮮丼', 
              description: '海の幸がたっぷりの海鮮丼です。お魚を豪快に乗せて豪華な丼ぶりに仕上げました。夏でもガッツリいけます！',
              howto: "1. ご飯と大さじ一杯のお酢をかき混ぜて酢飯を作ります。\n2. 酢飯の上に刺身のお魚を豪快に盛りつけます。\n3. 塩、醤油、ワサビなどお好みで味を調整します。出来上がり！",
              img_path: '/recipes/image-2.jpg')

Ingredient.create(name: '銀鮭(刺身用)', quantity: '1作', amazon_id: 'B01M2D4BMI', recipe_id: 2)
Ingredient.create(name: 'マグロ(刺身用)', quantity: '1作', amazon_id: 'B07L373XV8',recipe_id: 2)
Ingredient.create(name: 'イカそうめん', quantity: '1/2杯', amazon_id: 'B07V4LV4Q6',recipe_id: 2)
Ingredient.create(name: '酢', quantity: '大さじ1', amazon_id: 'B00Z5ZPTK6',recipe_id: 2)
Ingredient.create(name: '塩', quantity: '少々', amazon_id: 'B019FAHI6E',recipe_id: 2)
Ingredient.create(name: 'ご飯', quantity: '2膳', amazon_id: 'B008AQZXPI',recipe_id: 2)

RecipeTag.create(recipe_id: 2, tag_id: 1)
RecipeTag.create(recipe_id: 2, tag_id: 8)
RecipeTag.create(recipe_id: 2, tag_id: 13)

Recipe.create(title: '家庭料理の定番！ホクホク肉じゃが', 
              description: '家庭料理の定番の肉じゃが、豚肉でも牛肉でも美味しいですが今回は牛肉のみで作ります。豊富な具材に味が染み込んで最高にうまうまです！',
              howto: "1. じゃがいも、人参は皮をむいて食べやすい大きさに切ります。\n2. 玉ねぎはくし切りにします。牛肉も食べやすい大きさに切ります。\n3. フライパンで具材を炒めます。\n4. だし汁を煮ます。煮立ったら具材を入れます。完成！",
              img_path: '/recipes/image-3.jpg')

Ingredient.create(name: '牛肉', quantity: '400g', amazon_id: 'B0752HSZ8X', recipe_id: 3)
Ingredient.create(name: 'じゃがいも', quantity: '6個', amazon_id: 'B01J6Y7R1A',recipe_id: 3)
Ingredient.create(name: '人参', quantity: '1個', amazon_id: 'B01J6Y7490',recipe_id: 3)
Ingredient.create(name: '玉ねぎ', quantity: '1個', amazon_id: 'B01J6Y81EW',recipe_id: 3)

RecipeTag.create(recipe_id: 3, tag_id: 1)
RecipeTag.create(recipe_id: 3, tag_id: 9)

Recipe.create(title: 'クセになる！四川風激辛麻婆豆腐', 
              description: '本場、中国四川風の激辛麻婆豆腐です。お肉とお豆腐にタレがよく絡みます。激辛好きにはたまらない一品です。',
              howto: "1. とうふは2cm角に切ります。\n2. 長ネギはみじん切りにします。\n3. フライパンで具材を炒めます。ある程度炒まったら肉を投入します。\n4. 唐辛子、コチュジャン、水を入れてさらに炒めて完成！",
              img_path: '/recipes/image-4.jpg')

Ingredient.create(name: '豚ひき肉', quantity: '200g', amazon_id: 'B07B3YM1ZM', recipe_id: 4)
Ingredient.create(name: '長ねぎ', quantity: '1本', amazon_id: 'B01J6Y6DRE', recipe_id: 4)
Ingredient.create(name: '唐辛子', quantity: '1本', amazon_id: 'B01J6Y8OMQ',recipe_id: 4)
Ingredient.create(name: 'とうふ', quantity: '1丁', amazon_id: 'B01N2QS9H7',recipe_id: 4)
Ingredient.create(name: 'コチュジャン', quantity: '小さじ2', amazon_id: 'B01FX83J1K',recipe_id: 4)

RecipeTag.create(recipe_id: 4, tag_id: 5)
RecipeTag.create(recipe_id: 4, tag_id: 12)
RecipeTag.create(recipe_id: 4, tag_id: 13)

Recipe.create(title: 'シンプルなおいしさ！黄金チャーハン', 
              description: '家にある材料でできるお手軽なチャーハンのご紹介です。具材も最低限で簡単に作れます。卵とご飯を事前に混ぜておいてコーティングするのがコツ！',
              howto: "1. ご飯を冷蔵庫でよく冷やしておきます。\n2. ある程度冷えて水気が飛んだら卵と混ぜます。ダマができないように注意。\n3. ハム、長ネギをちょうど良い大きさに切ります。\n4. ご飯を炒めてちょうどいいところで具材を投入します。火が通ったら完成！",
              img_path: '/recipes/image-5.jpg')

Ingredient.create(name: 'ご飯', quantity: '450g', amazon_id: 'B008AQZXPI', recipe_id: 5)
Ingredient.create(name: '卵', quantity: '1個', amazon_id: 'B01MS4NM2C',recipe_id: 5)
Ingredient.create(name: 'ハム', quantity: '2枚', amazon_id: 'B01MSUI2FR',recipe_id: 5)
Ingredient.create(name: '長ねぎ', quantity: '1/4本', amazon_id: 'B01J6Y6DRE',recipe_id: 5)

RecipeTag.create(recipe_id: 5, tag_id: 5)
RecipeTag.create(recipe_id: 5, tag_id: 13)



Recipe.create(title: '玉ねぎたっぷり！簡単カルパッチョ', 
              description: '玉ねぎをたっぷりと使ったお刺身のカルパッチョです。玉ねぎのシャキシャキとした食感と新鮮なお刺身は相性抜群！お酒のお供に是非！',
              howto: "1. 玉ねぎは薄切りにして水にさらしてから水気を切ります。\n2. お刺身は薄くそぎ切りにします。\n3. 玉ねぎとオリーブオイルを和えます。\n4. お刺身を皿に盛って上に3を乗せます。上からオリーブオイルをかけてブラックペッパーを振ったら完成！",
              img_path: '/recipes/image-6.jpg')
            
Ingredient.create(name: 'マグロ', quantity: '適量', amazon_id: 'B07L373XV8', recipe_id: 6)
Ingredient.create(name: 'サーモン', quantity: '適量', amazon_id: 'B01M2D4BMI',recipe_id: 6)
Ingredient.create(name: 'ホタテ', quantity: '適量', amazon_id: 'B01M8GI8TP',recipe_id: 6)
Ingredient.create(name: '玉ねぎ', quantity: '1個', amazon_id: 'B01J6Y81EW',recipe_id: 6)
Ingredient.create(name: 'オリーブオイル', quantity: '適量', amazon_id: 'B003YKH678',recipe_id: 6)

RecipeTag.create(recipe_id: 6, tag_id: 3)
RecipeTag.create(recipe_id: 6, tag_id: 8)
RecipeTag.create(recipe_id: 6, tag_id: 11)
RecipeTag.create(recipe_id: 6, tag_id: 14)


Recipe.create(title: '生地から作る！おうちピザ', 
              description: 'おうちで生地から作れるお手軽なピザはいかがでしょうか？自分で作ればおいしさもひとしおです。お好みの具材を入れて好きにアレンジをしても面白いですね！',
              howto: "1. ベーコンを5mm幅に切っておきます。\n2. ボウルに生地の材料を入れて混ぜ合わせておきます。\n3. まとまってきたらこねてひとまとめにします。\n4. 生地を人数分に等分してラップで包んで発酵させます。\n5. クッキングシートに置いて薄く伸ばしてトマトソースを塗って具材を乗せます。\n6. オーブンで10分ほど焼いたら完成！",
              img_path: '/recipes/image-7.jpg')

Ingredient.create(name: '強力粉', quantity: '200g', amazon_id: 'B0015XN29W', recipe_id: 7)
Ingredient.create(name: '薄力粉', quantity: '50g', amazon_id: 'B0015XN274',recipe_id: 7)
Ingredient.create(name: 'ドライイースト', quantity: '5g', amazon_id: 'B00BBVVQLE',recipe_id: 7)
Ingredient.create(name: 'チーズ', quantity: '適量', amazon_id: 'B07YNSVF34',recipe_id: 7)
Ingredient.create(name: 'ベーコン', quantity: '2枚', amazon_id: 'B01M0EJ9RE',recipe_id: 7)
Ingredient.create(name: 'トマトソース', quantity: '適量', amazon_id: 'B01MAW4Y68',recipe_id: 7)

RecipeTag.create(recipe_id: 7, tag_id: 3)
RecipeTag.create(recipe_id: 7, tag_id: 13)
