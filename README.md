# テーブル設計

## users テーブル

| Column             | Type   | Options                     |
| ------------------ | ------ | --------------------------- |
| nickname           | string | null: false                 |
| email              | string | null: false , unique: true  |
| password           | string | null: false                 |

has_many :posts
has_many :comments

## posts テーブル

| Column               | Type       | Options                       |
| -------------------- | ---------- | ----------------------------- |
| explanatory_text     | text       | null: false                   |
| target_age_id        | integer    | null: false                   |
| user                 | references | null: false, foreign_key: true|

belongs_to :user
has_many :comments

## comments テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| comment      | text         | null: false                    |
| post         | references   | null: false, foreign_key: true |
| user         | references   | null: false, foreign_key: true |

belongs_to :user
belongs_to :post

## アプリケーション名


## アプリケーション概要
赤ちゃん（１歳まで）のおもちゃ画像、対象年齢、おすすめ理由を投稿でき、ユーザー同士でコミュニ
ケーションをとるコメント機能もあり意見の交換も可能です。おもちゃ選びの参考にすることができます。

## URL
https://original-39671.onrender.com

## テスト用アカウント
・Basic認証パスワード：2222

・Basic認証ID：admin

・メールアドレス：a@gmail.com

・パスワード：123456

・メールアドレス：b@gmail.com

・パスワード：123456

# 利用方法

## 画像投稿
1.トップページ（一覧ページ）のヘッダーから新規登録を行う

2.新規投稿するボタンから、画像、対象年齢、おすすめ理由を入力し投稿する

3.トップページ下部に画像、対象年齢、投稿者が表示される

４.詳細ボタンで投稿内容の詳細が確認できる

## ユーザー同士のコメント
1.トップページ下部の投稿一覧から詳細ボタンをクリック

2.該当ページにてコメント入力ができる

## アプリケーションを作成した背景
自身に3ヶ月の子どもがおり、ネットランキングなどでおもちゃを購入してみたが興味を持ったり
興味を示さなかったり、一概に参考にならなったことがきっかけです。
実際に使用した感想や良かった点がユーザー同士で共有ができたら無駄を省いたり、より興味がわく
おもちゃを用意してあげることができるのではと考え開発を行うことにしました。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1KMIxuyUNZhPwr4esgnmfr4Ea_Uofq0y4uAVb_KZwEX0/edit#gid=951572436

## 実装した機能についての画像やGIFおよびその説明

## データベース設計

## 画面遷移図	

## 開発環境
・フロントエンド

・バックエンド

・インフラ

・テスト

・テキストエディタ

・タスク管理

## ローカル環境での動作方法
以下のコマンドを順に実行

% clone https://github.com/tomoya0827/original-39671.git

% cd original-39671

% bundle install

% yarn install

## 工夫した点
Active Hashを導入し、対象年齢をプルダウンで選択が可能です。
同じくActive Hashを用いて検索機能も実装致しました。検索後に
条件分岐で検索条件のクリアボタンを用意しました。