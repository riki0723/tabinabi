# ✈️  旅navi
### ユーザー同士で観光地を共有していくアプリケーション

<img width="1440" src="https://user-images.githubusercontent.com/69281517/104941372-53f00d80-59f6-11eb-8a6d-89dd8da699cf.jpg">

# 💭  アプリケーション概要
### 観光地の情報をユーザー同士で共有し作っていく。
### また、ユーザー達で作って行った情報から自らが旅行に行く時に観光地を探す事が出来る。




# 🌐  App URL 
#### https://tabinabi-28781.herokuapp.com/
#### テストユーザー（e-mail:aaa@com.jp　PW:aaa111）


# 💻  利用方法
#### 1️⃣ トップページから新規登録・ログイン
　・　トップページの右上ログインボタンからログイン画面に進む<br>
　・　新規ユーザーの場合はログイン画面の左下『NEW USER』から登録情報（ユーザー名６文字以下、メールアドレス、パスワード半角英数６文字以上で登録を行う）<br>
![demo](https://gyazo.com/33e6332de6902284af882773a6cc0789/raw)
<br>
<br>
#### 2️⃣ 観光地を登録する
　・　ログインを行うとトップページの右上にユーザーネームが表示されます<br>
　・　ユーザーネームをクリックするとリストが表示されリストの中に観光地登録がございます。<br>
　・　観光地名、都道府県、画像、説明、タグを入力し、観光地を登録<br>
　・　登録後はトップページに戻る<br>
![demo](https://gyazo.com/9fea361d7e520efc23c69c3ed4503135/raw)
![demo](https://gyazo.com/e1db1fe0004b5bea95bf09967712fe3c/raw)
<br>
<br>
#### 3️⃣ 観光地の詳細、編集、削除
　・　登録した観光地をクリックするとその観光地の詳細が表示されます。<br>
　・　登録したユーザーのみ変更ボタンと削除ボタンが表示されます。<br>
 ![demo](https://gyazo.com/3a6042562a8e54cdafc69730ef6e4207/raw)
<br>
<br>
#### 4️⃣ 観光地に追加情報を登録する
　・　登録した観光地の詳細ページにメモ形式で追加情報を入力できます<br>
　・　非同期通信費を使用している為画面を更新せずとも表示されます。<br>
 ![demo](https://gyazo.com/0076e3dcfcc7b8096b6ff0de7650fa42/raw)


# 📦  機能一覧
| 機能           | 概要             |
| -------------- | -----------------|
| ユーザー管理機能　| 新規登録・ログイン・ログアウトが可能  |
| 観光地投稿機能 | 画像付きで観光地の登録が可能 |
| 観光地詳細表示機能 | 観光地の詳細をページで閲覧可能 |
| 観光地編集・削除機能 | 投稿者本人のみ投稿編集・削除が可能 |
| ユーザー詳細表示機能 | 各ユーザー自分が登録した観光地を表示 |
| タグ機能 | 観光地に対しタグ付けが可能 |
| タグ絞り込み機能 | タグごとで絞り込み、同じタグの観光地の表示が可能 |
| 追加情報投稿機能 | 観光地詳細ページから非同期通信でコメントが可能|
| 地域別検索機能 | トップページから地域単位で表示が可能|

### 📝 タグ機能
| 特徴            | 概要             |
| -------------- | -----------------|
| 観光地にタグ機能　| 観光地に対し複数タグの紐付けが可能　|
| 観光地登録時に複数のデータベースに登録 | 観光地登録時に観光地テーブル、タグテーブル複数同時に登録が可能 |
| 一つのformで複数のデーターを登録 | タグを登録するフォームで複数タグを同時登録可能 |

# 🔨 追加予定機能
### 画像の複数登録
### googleMAPを利用し地図登録 


# 🚜 開発環境

- VScode
- Ruby 2.6.5
- Rails 6.0.3.4
- mysql2 0.5.3
- JavaScript
- gem 3.0.3
- heroku 7.46.0
- AWS

# DB設計

## Userテーブル
| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| nickname      | string     | null: false |
| email         | string     | null: false |
| password      | string     | null: false |
### Associate
- has_many :spots
- has_many :messages

## Spotテーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | title      | null: false                    |
| text          | text       | null: false                    |
| place         | area_id    | null :false                    |
| user_id       | references | null: false, foreign_key: true |
### Associate
- belongs_to :user
- belongs_to :area
- has_one_attached :image
- has_many :has_many :spot_tag_relations
- has_many :has_many :tags
- has_many :has_many :messages

## Tag
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       | null: false                    |
| spot_id | references | null: false, foreign_key: true |
### Associate
- belongs_to :user
- belongs_to :spot

## SpotsTag
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       | null: false                    |
| tag_id | references | null: false, foreign_key: true |
| spot_id | references | null: false, foreign_key: true |
### Associate
- belongs_to :tag
- belongs_to :spot

## Message
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       | null: false                    |
| user_id | references | null: false, foreign_key: true |
| spot_id | references | null: false, foreign_key: true |
### Associate
- belongs_to :user
- belongs_to :spot



