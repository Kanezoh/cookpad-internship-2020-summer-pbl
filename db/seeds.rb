# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(title: 'お手軽！明太子パスタ', 
              description: '手軽に作れる明太子パスタです。バターと生クリームが味の秘訣！',
              img_path: '/recipes/image-1.jpg')
Recipe.create(title: 'うまうま！海鮮丼', 
              description: '海の幸がたっぷりの海鮮丼です。夏でもガッツリ！',
              img_path: '/recipes/image-2.jpg')
