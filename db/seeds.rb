# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Bookmarks should have url, title, comment (optional), favorite (optional)
Bookmark.create(
  url: "http://generalassemb.ly",
  title: "Genaral Assembly",
  comment: "This WDI thing is interesting.")

Bookmark.create(
  url: "http://www.facebook.com",
  title: "Facebook",
  comment: "Ah, the book of faces!")

Bookmark.create(
  url: "http://guides.rubyonrails.org",
  title: "Rails Guides",
  comment: "Probably our bible for the next few weeks",
  favorite: true)
