# README

## アプリケーション名　：　UpMake

### 概要
#### ・美容に関する記事、画像を投稿・またはコメントを行うアプリケーションです。

### 接続先情報
#### [・　URL](http://upmake.herokuapp.com/)

#### テスト用アカウント等
#### ・投稿者１
#### 　メールアドレス: test@t.com
#### 　パスワード: test000
#### ・投稿者２
#### 　メールアドレス: test@t.jp
#### 　パスワード: test000

### Githubリポジトリ
#### [・　URL](https://github.com/yooo09/upmake)

### 開発環境
#### Ruby/Ruby on Rails/MySQL/Github/Heroku/Visual Studio Code

### 制作背景
#### 様々なSNSがある中で、発進内容も様々なものが多いので
#### 一つの種別に特化しているアプリケーションがあると発信や検索が容易になると思い作成しました。



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