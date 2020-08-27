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
