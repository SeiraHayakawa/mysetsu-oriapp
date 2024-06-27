
## users
|Column            |Type   |Options                  |
|nickname          |string |null: false              |
|email             |string |null: false, unique: true|
|encrypted_password|string |null: false              |
|family_name       |string |null: false              |
|first_name        |string |null: false              |
|family_name_kana  |string |null: false              |
|first_name_kana   |string |null: false              |

### Association
has_one :torisetsu



## torisetsus
|Column            |Type      |Options                       |
|user              |references|null: false, foreign_key: true|


### Association
belongs_to :user
has_one :introduction
has_one :life
has_one :work
has_one :school
has_one :partner
has_one : hobby



## introductions
|Column            |Type      |Options                  |
|birth_day         |date      |null: false              |
|blood_type        |string    |null: false              |
|body_height       |integer   |null: false              |
|body_weight       |string    |null: false              |
|favorite_food     |string    |null: false              |
|dislike_food      |string    |null: false              |
|favorite_color    |string    |null: false              |
|favorite_place    |string    |null: false              |
|torisetsu         |references|null: false, foreign_key: true|

### Association
belongs_to :torisetsu



## lifes
|Column               |Type       |Options                       |
|life_morning         |string     |null: false                   |
|life_breakfast       |string     |null: false                   |
|life_breakfast_weight|string     |null: false                   |
|life_cry             |string     |null: false                   |
|life_crytime         |string     |null: false                   |
|life_anger           |string     |null: false                   |
|life_battle          |string     |null: false                   |
|life_sleep           |string     |null: false                   |
|torisetsu            |references |null: false, foreign_key: true|


### Association
belongs_to :torisetsu




## works
|Column            |Type      |Options                       |
|work_like         |string    |null: false                   |
|work_concentration|string    |null: false                   |
|work_incandescent |string    |null: false                   |
|work_fine_work    |string    |null: false                   |
|work_heavy_lifting|string    |null: false                   |
|work_communication|string    |null: false                   |
|work_overtime     |string    |null: false                   |
|work_party        |string    |null: false                   |
|work_party_owner  |string    |null: false                   |
|torisetsu         |references|null: false, foreign_key: true|


### Association
belongs_to :torisetsu




## schools
|Column            |Type   |Options                  |
|          |string |null: false              |
|torisetsu|references|null: false, foreign_key: true|


### Association
belongs_to :torisetsu



## partners
|Column            |Type   |Options                  |
|          |string |null: false              |
|torisetsu|references|null: false, foreign_key: true|


### Association
belongs_to :torisetsu



## hobbys
|Column            |Type   |Options                  |
|          |string |null: false              |
|torisetsu|references|null: false, foreign_key: true|


### Association
belongs_to :torisetsu