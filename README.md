<<<<<<< Updated upstream
## usersテーブル

| Column               | Type       | Options                       |
| ------               | ------     | -----------                   |
| name                 | string     | null: false                   |
| email                | string     | null: false, unique :true     |
| encrypted_password   | string     | null: false                   |
| lastname             | string     | null: false                   |
| firstname            | string     | null: false                   |
| birthday             | date       | null: false                   |
- has_many :items
- has_one :address



## itemsテーブル

| Column            | Type       | Options                         |
| ------            | ------     | -----------                     |
| name              | string     | null: false                     |
| category_id       | integer    | null: false                     |
| item_condition_id | integer    | null: false                     |
| country_id        | integer    | null: false                     |
| user              | references | null: false, foreign_key: true  |
| text              | text       | null: false                     |
| nation_id         | integer    | null: false                     |
| city              | string     | null: false                     |
- belongs_to :user



## addressesテーブル

| Column           | Type          | Options                          |
| ------           | ------        | -----------                      |
| country_id       | integer       | null: false                      |
| city             | string        | null: false                      |
belongs_to :user

=======# README
アプリケーション名	mando

アプリケーション概要 いらないものを断捨離し捨てる代わりに貧しい国への援助に役立てる

URL	 https://mando-34246.herokuapp.com/

テスト用アカウント	mail sss@sss
password hiroyuki0823

basic認証

ID hiroyuki

Password hiroyuki0823

利用方法	ログインし商品を出品すると海外の貧しい国に活くることができる

目指した課題解決	このアプリを作成した経緯は中学校で教師をしている友人と話をしていた時に道徳の授業で貧しい国のことを教えているが、何もできないと言われたからです。
断捨離をしていてもったいないと感じた経験が私にもあるので、これを機に何かできないか考えました。
断捨離する物資を海外の貧しい国人が利用できれば、環境問題の解決に繋がり、貧しい国人たちの助けになる活動ができると感じたからです。

トップページ

https://i.gyazo.com/98d999333b85efc7760f6ac3dd4fb25a.jpg


新規登録画面

https://i.gyazo.com/7147056fc71f93be0d9d6e66169bff10.png

ログインページ

https://gyazo.com/bd98735c7102fc4b513af94a4e44393c

商品出品ページ

https://gyazo.com/7aca1489c65699e2da51626621949559

商品詳細ページ

https://gyazo.com/bb3a3c674f71f09241b010f17f38a139

ユーザー詳細ページ

https://gyazo.com/174772d4485a2d29ef3f7bd4b5a07da5

コメント機能

https://gyazo.com/bf5c15d2f9afea2851120bb9a72efea9

工夫したポイント

商品出品ページを作成するにあたってアクティブハッシュを使用し、貧しい国を選択できるようにした。
貧しい国の基準は一日１ドルで生活する地域を選択している。
コメント機能を追加実装しユーザー同士の結びつきを大事にできる使用にしている。

使用技術

バックエンド

Ruby, Ruby on Rails

フロントエンド

JavaScript

データベース

Mysql sequelpro

インフラ

docker(テキストを一周しました)

ソース管理

GitHub, GitHubDesktop

テスト

RSpec

エディタ

VScode

課題や今後実装していく機能

ポイント還元機能
サーチ機能













