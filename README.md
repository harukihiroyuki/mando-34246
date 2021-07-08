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

ID HIROYUKI

Password Hiroyuki0823

利用方法	ログインし商品を出品すると海外の貧しい国に活くることができる

目指した課題解決	このアプリを作成した経緯は中学校で教師をしている友人と話をしていた時に道徳の授業で貧しい国のことを教えているが、何もできないと言われたからです。
断捨離をしていてもったいないと感じた経験が私にもあるので、これを機に何かできないか考えました。
断捨離する物資を海外の貧しい国人が利用できれば、環境問題の解決に繋がり、貧しい国人たちの助けになる活動ができると感じたからです。





