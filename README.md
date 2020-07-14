# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|name|string|null:false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|password confirmation|string|null: false|

has_many :poats
has_many :comments

## postsテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|text|text|
|image|string|
|user_id|integer|null: false, foreign_key: true|

has_many :comments
has_many :category_posts
has_many :categories, through: category_posts
belongs_to :user


## commentsテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|text|text|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

belongs_to :post
belongs_to :user


## categoriesテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|text|text|null: false|

has_many :category_posts
has_many :posts, through: category_posts


## category_postsテーブル
|Column|Type|Options|
|:----:|:----:|:----:|
|user_id|integer|foreign_key: true|
|group_id|integer|foreign_key: true|

belongs_to :post
belongs_to :user