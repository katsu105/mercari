# README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|primary_key: true|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|postal_code|integer(7)|null: false|
|prefecture|string|null: false|
|municipality|string|null: false|
|address|string|null: false|
|account_number|string|null: false|
|credit_card_number|string|null: false|

### Association
- has_many :items

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|primary_key: true|
|name|string|null: false|
|text|string|null: false|
|user|references|foreign_key: true|
|brand|references|foreign_key: true|
|l_category|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :brand
- belongs_to :l_category

## l_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|primary_key: true|
|name|string|null: false|

### Association
- has_many :items
- has_many :m_categories

## m_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|primary_key: true|
|name|string|null: false|
|l_category|references|foreign_key: true, null: false|

### Association
- belongs_to :l_category
- has_many :s_categories

## s_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|primary_key: true|
|name|string|null: false|
|m_category|references|foreign_key: true, null: false|

### Association
- belongs_to :m_categories

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|primary_key: true|
|name|string|null: false|

### Association
- has_many :items
