# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all


User.create(
  id:1,
  email: "rzhuge@berkeley.edu",
  password: 'zeddchainsmokers',
  password_confirmation: 'zeddchainsmokers',
  admin: true
)

Post.create(
  id: 1,
  title: "My Very First Post",
  published_at: Time.now - 1.day,
  body:
  %Q{### There Is Something You Should Know!

  This is my very first post using markdown!

  How do you like it?  I learned this from [RichOnRails.com](http://richonrails.com/articles/rendering-markdown-with-redcarpet)!}
)

Post.create(
  id: 2,
  title: "My Second Post",
  published_at: Time.now,
  body:
  %Q{### My List of Things To Do!

  Here is the list of things I wish to do!

  * write more posts
  * write even more posts
  * write even more posts!}
)

Post.create(
  id: 3,
  title: "My third Post",
  published_at: Time.now,
  body:
  %Q{### My List of Things To Do!

  Here is the list of things I wish to do!

  * write more posts
  * write even more posts
  * write even more posts!}
)

Post.create(
  id: 4,
  title: "My fourth Post",
  published_at: Time.now,
  body:
  %Q{### My List of Things To Do!

  Here is the list of things I wish to do!

  * write more posts
  * write even more posts
  * write even more posts!}
)
