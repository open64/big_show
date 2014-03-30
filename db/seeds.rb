# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Catalog.delete_all
Product.delete_all

nout = Catalog.create name: 'Ноутбуки', description: 'Ноутбуки всіх категорій'
ps = Catalog.create name: 'ПК', description: 'Персональні комп’ютери всіх категорій'
smartphone = Catalog.create name: 'Смартфони', description: 'Смартфони всіх категорій'

Product.create name: 'Asus', description: '', price: 4599, image: 'asus.jpg', quantity: 4, catalog_id: nout[:id]
Product.create name: 'Acer', description: '', price: 2799, image: 'acer.jpg', quantity: 5, catalog_id: nout[:id]
Product.create name: 'lenovo', description: '', price: 2510, image: 'lenovo.jpg', quantity: 3, catalog_id: nout[:id]

Product.create name: 'Everest Game', description: '', price: 8173, image: 'everest game.jpg', quantity: 5, catalog_id: ps[:id]
Product.create name: 'Impression CoolPlay', description: '', price: 6435, image: 'Impression_CoolPlay.jpg', quantity: 3, catalog_id: ps[:id]

Product.create name: 'Samsung', description: '', price: 2999, image: 'Samsung.jpg', quantity: 5, catalog_id: smartphone[:id]
Product.create name: 'HTC', description: '', price: 2699, image: 'HTC.jpg', quantity: 6, catalog_id: smartphone[:id]
Product.create name: 'LG', description: '', price: 7399, image: 'LG.jpg', quantity: 3, catalog_id: smartphone[:id]
Product.create name: 'Apple', description: '', price: 10175, image: 'Apple.jpg', quantity: 5, catalog_id: smartphone[:id]