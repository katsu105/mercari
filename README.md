# README
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|Primary key: true|
|name|string|null: false|
|email|string|nill: false, uniq|
|password|string|nill: false|
|items_id|integer|nill: false|

### Association
has_many :items

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|id|inteder|Primary key: true|
|name|string|null: false|
|text|string|null: false|
|user_id|integer|foreign_key: true|
|brands|string|foreign_key: true|
|l_category_id|integer|foreign_key: true|
|m_category_id|integer|foreign_key: true|
|s_category_id|integer|foreign_key: true|

### Association
belongs_to :user
has_many :items_category
has_many :l_category, through: :items_category

## items_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|Primary key: true|
|items_id|integer|foreign_key: true|
|l_categorys_id|integer|foreign_key: true|

### Association
belongs_to :item
belongs_to :l_category


## l_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|Primary key: true|
|name|string|null: false|

### Association
has_many :items_category
has_many :items, through: :items_category
has_one :m_category

## m_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|Primary key: true|
|name|string|null: false|
|l_category_id|string|foreign_key: true, null: false|

### Association
belongs_to :l_category
has_one :s_category

## s_categoryテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|Primary key: true|
|name|string|null: false|
|m_category_id|string|foreign_key: true, null: false|
|l_category_id|string|foreign_key: true, null: false|

### Association
has_one :m_category

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|id|inteder|Primary key: true|
|name|string|null: false|

### Association
has_many :items

https://www.draw.io/#G1JF1RPeO9347Y-_ZbnINLuLIgXX-ll3Wc
