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

## comments テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| comment      | text         | null: false                    |
| post         | references   | null: false, foreign_key: true |
| user         | references   | null: false, foreign_key: true |

belongs_to :user