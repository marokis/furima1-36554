# db設計

##  users table

| Column             | Type         | Options                    |
|--------------------|--------------|----------------------------|
| email              | string	      | null: false, unique: true  |
| encrypted_password | string	      | null: false                |
| nickname	         | string	      | null: false                |
| last_name	         | string	      | null: false                |
| first_name	string | string	      | null: false                |
| last_name_kana	   | string	      | null: false                |
| first_name_kana	   | string      	| null: false                |
| dob                | date	        | null: false                |

### Association

* has_many :items
* has_many :orders

##  items table

| Column          | Type          | Options                   |
|-----------------|---------------|---------------------------|
| name            | string        | null:false                |
| image           | string        | null:false                |
| price           | integer       | null:false                |
| user            | references    | foreign_key: true         |
| detail          | text          | null:false                |
| category_id     | integer       | null:false                |
| status_id       | integer       | null:false                |
| charge_id       | integer       | null:false                |
| datetime        | date          | null:false                |

### Association

* belongs_to :user
* has_one :orders

##  orders table

| Column          | Type          | Options                   |
|-----------------|---------------|---------------------------|
| user            | references    | foreign_key: true         |
| items           | references    | foreign_key: true         |

### Association

* belongs_to :user
* belongs_to :item
* has_one :addresses


##  addresses table

| Column          | Type          | Options                   |
|-----------------|---------------|---------------------------|
| postcode        | string        | null: false               |
| prefectures_id  | integer       | null: false               |
| city            | string        | null: false               |
| place           | string        | null: false               |
| building        | string        | |
| phone_number    | string        | null: false               |
| order           | references    | foreign_key: true         |


### Association

* belongs_to :order