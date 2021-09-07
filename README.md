# db設計

##  users table

| Column             | Type         | Options                    |
|--------------------|--------------|----------------------------|
| email              | string	      | null: false, unique: true  |
| encrypted_password | string	      | null: false                |
| nickname	         | string	      | null: false                |
| last_name	         | string	      | null: false                |
| first_name	       | string	      | null: false                |
| last_name_kana	   | string	      | null: false                |
| first_name_kana	   | string      	| null: false                |
| dob                | date	        | null: false                |

### Association

* has_many :items
* has_many :orders

##  items table

| Column          | Type          | Options                       |
|-----------------|---------------|-------------------------------|
| name            | string        | null:false                    |
| price           | integer       | null:false                    |
| user            | references    | foreign_key: true, null:false |
| detail          | text          | null:false                    |
| category_id     | integer       | null:false                    |
| status_id       | integer       | null:false                    |
| charge_id       | integer       | null:false                    |
| datetime_id     | integer       | null:false                    |
| prefecture_id   | integer       | null:false                    |


### Association

* belongs_to :user
* has_one :order

##  orders table

| Column          | Type          | Options                       |
|-----------------|---------------|-------------------------------|
| user            | references    | foreign_key: true, null:false |
| items           | references    | foreign_key: true, null:false |

### Association

* belongs_to :user
* belongs_to :item
* has_one :address


##  addresses table

| Column          | Type          | Options                       |
|-----------------|---------------|-------------------------------|
| postcode        | string        | null: false                   |
| prefecture_id   | integer       | null: false                   |
| city            | string        | null: false                   |
| place           | string        | null: false                   |
| building        | string        | |
| phone_number    | string        | null: false                   |
| order           | references    | foreign_key: true, null:false |


### Association

* belongs_to :order