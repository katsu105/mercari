# README
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|primary_key: true|
|name|string|null: false|
|email|string|nill: false, unique: true|
|password|string|nill: false|

### Association
has_many :items

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|id|inteder|primary_key: true|
|name|string|null: false|
|text|string|null: false|
|user_id|integer|foreign_key: true|
|brands|string|foreign_key: true|
|l_category_id|integer|foreign_key: true|

### Association
belongs_to :user
belongs_to :brands
belongs_to :l_category


## l_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|primary_key: true|
|name|string|null: false|

### Association
has_many :items
has_many :m_category
has_many :brands

## m_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|primary_key: true|
|name|string|null: false|
|l_category_id|string|foreign_key: true, null: false|

### Association
belongs_to :l_category
has_many :s_category

## s_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|primary_key: true|
|name|string|null: false|
|m_category_id|string|foreign_key: true, null: false|
|l_category_id|string|foreign_key: true, null: false|

### Association
belongs_to :m_category

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|primary_key: true|
|name|string|null: false|

### Association
has_many :items
belongs_to :l_category

[![Image from Gyazo](https://i.gyazo.com/68638ecba44945083be43407bde4bc08.png)](https://gyazo.com/68638ecba44945083be43407bde4bc08)

<a href="https://gyazo.com/68638ecba44945083be43407bde4bc08"><img src="https://i.gyazo.com/68638ecba44945083be43407bde4bc08.png" alt="Image from Gyazo" width="567"/></a>
