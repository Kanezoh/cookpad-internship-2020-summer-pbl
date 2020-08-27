# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(title: 'お手軽！明太子パスタ', 
              description: '手軽に作れる明太子パスタです。バターと生クリームが味の秘訣！',
              howto: "1. パスタを茹でます\n2. 10分待ちます\n3. お湯から上げます\n4. 明太子とバターと生クリームを絡めます、完成！",
              img_path: '/recipes/image-1.jpg')

Ingredient.create(name: 'パスタ', quantity: '2束', amazon_id: 'B00Z62OS9G', recipe_id: 1)
Ingredient.create(name: 'のり', quantity: '適量', amazon_id: 'B01IP2V4CW',recipe_id: 1)
Ingredient.create(name: '大葉', quantity: '適量', amazon_id: 'B01J6Y8GBU',recipe_id: 1)
Ingredient.create(name: '明太子', quantity: '70g', amazon_id: 'B01MXKH966',recipe_id: 1)
Ingredient.create(name: 'バター', quantity: '大さじ2', amazon_id: 'B06WGTYJ1P',recipe_id: 1)
Ingredient.create(name: '牛乳', quantity: '大さじ2', amazon_id: 'B01LXZARKE',recipe_id: 1)

Recipe.create(title: 'うまうま！海鮮丼', 
              description: '海の幸がたっぷりの海鮮丼です。夏でもガッツリ！',
              howto: "1. 酢飯を作ります\n2. 盛りつけます",
              img_path: '/recipes/image-2.jpg')

Ingredient.create(name: '銀鮭(刺身用)', quantity: '1作', amazon_id: 'B01M2D4BMI', recipe_id: 2)
Ingredient.create(name: 'マグロ(刺身用)', quantity: '1作', amazon_id: 'B07L373XV8',recipe_id: 2)
Ingredient.create(name: 'イカそうめん', quantity: '1/2杯', amazon_id: 'B07V4LV4Q6',recipe_id: 2)
Ingredient.create(name: '酢', quantity: '大さじ1', amazon_id: 'B00Z5ZPTK6',recipe_id: 2)
Ingredient.create(name: '塩', quantity: '少々', amazon_id: 'B019FAHI6E',recipe_id: 2)
Ingredient.create(name: 'ご飯', quantity: '2膳', amazon_id: 'B008AQZXPI',recipe_id: 2)


Recipe.create(title: '至高の肉じゃが', 
  description: 'やばい肉じゃがです',
  howto: "1. 材料を炒めてから煮ます\n2. 盛りつけます",
  img_path: '/recipes/image-3.jpg')

Ingredient.create(name: '牛肉', quantity: '400g', amazon_id: 'B01M2D4BMI', recipe_id: 3)
Ingredient.create(name: 'じゃがいも', quantity: '6個', amazon_id: 'B07L373XV8',recipe_id: 3)
Ingredient.create(name: '人参', quantity: '1個', amazon_id: 'B07V4LV4Q6',recipe_id: 3)
Ingredient.create(name: '玉ねぎ', quantity: '1個', amazon_id: 'B00Z5ZPTK6',recipe_id: 3)

Recipe.create(title: '旨辛マーボー', 
              description: 'うまいし辛いです',
              howto: "1. 材料を炒めます\n2. 辛くして盛りつけます",
              img_path: '/recipes/image-4.jpg')

Ingredient.create(name: '長ねぎ', quantity: '1本', amazon_id: 'B01M2D4BMI', recipe_id: 4)
Ingredient.create(name: '唐辛子', quantity: '1本', amazon_id: 'B07L373XV8',recipe_id: 4)
Ingredient.create(name: 'とうふ', quantity: '1丁', amazon_id: 'B07V4LV4Q6',recipe_id: 4)
Ingredient.create(name: 'コチュジャン', quantity: '小さじ2', amazon_id: 'B00Z5ZPTK6',recipe_id: 4)

Recipe.create(title: '黄金チャーハン', 
  description: 'やべえチャーハンです',
  howto: "1. 材料を炒めます\n2. 盛りつけます",
  img_path: '/recipes/image-5.jpg')

Ingredient.create(name: 'ご飯', quantity: '450g', amazon_id: 'B01M2D4BMI', recipe_id: 5)
Ingredient.create(name: '卵', quantity: '1個', amazon_id: 'B07L373XV8',recipe_id: 5)
Ingredient.create(name: 'ハム', quantity: '2枚', amazon_id: 'B07V4LV4Q6',recipe_id: 5)
Ingredient.create(name: '長ねぎ', quantity: '1/4本', amazon_id: 'B00Z5ZPTK6',recipe_id: 5)


Recipe.create(title: '刺身のカルパッチョ', 
  description: '最高のカルパッチョです',
  howto: "1. 刺身を並べます\n2. オリーブオイルをかけます、完成！",
  img_path: '/recipes/image-6.jpg')

Ingredient.create(name: 'マグロ', quantity: '適量', amazon_id: 'B01M2D4BMI', recipe_id: 6)
Ingredient.create(name: 'サーモン', quantity: '適量', amazon_id: 'B07L373XV8',recipe_id: 6)
Ingredient.create(name: 'ホタテ', quantity: '適量', amazon_id: 'B07V4LV4Q6',recipe_id: 6)
Ingredient.create(name: 'オリーブオイル', quantity: '適量', amazon_id: 'B00Z5ZPTK6',recipe_id: 6)

Recipe.create(title: 'うまいピザ', 
  description: 'めちゃうまいピザです',
  howto: "1. 生地の上に具材を並べます\n2. 焼きます、完成！",
  img_path: '/recipes/image-7.jpg')

Ingredient.create(name: '強力粉', quantity: '適量', amazon_id: 'B01M2D4BMI', recipe_id: 7)
Ingredient.create(name: '薄力粉', quantity: '適量', amazon_id: 'B07L373XV8',recipe_id: 7)
Ingredient.create(name: 'ベーコン', quantity: '適量', amazon_id: 'B07V4LV4Q6',recipe_id: 7)
Ingredient.create(name: 'トマトソース', quantity: '適量', amazon_id: 'B00Z5ZPTK6',recipe_id: 7)
