## アプリケーション名
赤ちゃん ＆ toys

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

4.詳細ボタンで投稿内容の詳細が確認できる

## ユーザー同士のコメント
1.トップページ下部の投稿一覧から詳細ボタンをクリック

2.該当ページにてコメント入力ができる

## フォロー機能といいね機能
・気になったユーザーをフォローすることで、そのユーザーの投稿一覧を確認できます。

・良いなと思った投稿にいいねをすることができます。

## アプリケーションを作成した背景
自身に3ヶ月の子どもがおり、ネットランキングなどでおもちゃを購入してみたが興味を示したり、
興味を示さなかったり、一概に参考にならなったことがきっかけです。
実際に使用した感想や良かった点がユーザー同士で共有ができたら無駄を省いたり、より興味がわく
おもちゃを用意してあげることができるのではと考え開発を行うことにしました。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1KMIxuyUNZhPwr4esgnmfr4Ea_Uofq0y4uAVb_KZwEX0/edit#gid=951572436

## 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/b89fa04178ea79145e8045b927339c63.png)](https://gyazo.com/b89fa04178ea79145e8045b927339c63)
・新規投稿画面です。画像を選択するとプレビューで確認ができます。

[![Image from Gyazo](https://i.gyazo.com/23966536b5bbff1daa7ae13646cc1ab3.jpg)](https://gyazo.com/23966536b5bbff1daa7ae13646cc1ab3)
・プルダウンで対象の年齢が検索できます。

[![Image from Gyazo](https://i.gyazo.com/23a3f62ed9422e0411bdbb0200679e2e.jpg)](https://gyazo.com/23a3f62ed9422e0411bdbb0200679e2e)
・詳細画面から投稿者をフォローをすることができます。

[![Image from Gyazo](https://i.gyazo.com/a0f1b12c9715065dac35667eb7ef0906.png)](https://gyazo.com/a0f1b12c9715065dac35667eb7ef0906)
・詳細画面から投稿に対して、いいねとコメントができます。

[![Image from Gyazo](https://i.gyazo.com/79334199dc327802612d50cfe451f7a0.jpg)](https://gyazo.com/79334199dc327802612d50cfe451f7a0)
・マイページでは自身の投稿一覧とフォロー、フォロワーを確認できます。


## データベース設計
[![Image from Gyazo](https://i.gyazo.com/31d793373ae46ecd0e1e66c76df049f2.png)](https://gyazo.com/31d793373ae46ecd0e1e66c76df049f2)

## 画面遷移図	
[![Image from Gyazo](https://i.gyazo.com/61b488594964ecd031bf44e263688a4f.png)](https://gyazo.com/61b488594964ecd031bf44e263688a4f)

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
同じくActive Hashを用いて検索機能も実装しました。検索後に
条件分岐で検索条件のクリアボタンを用意しました。画像投稿時には
プレビュー画像が表示され、見やすいようにしました。いいね機能や
コメント機能を非同期で実施できるように実装しました。