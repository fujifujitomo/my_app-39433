# テーブル設計

## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :pets

## pets テーブル
| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| name     | string  | null: false |
| gender   | integer |             |
| kind     | string  |             |
| birthday | date    |             |

### Association
- has_many :writes
- belongs_to :user

## writes テーブル
| Column    | Type    | Options  |
| --------- | ------- | -------- |
| icon      | integer |          |
| input_dat | date    |          |
| memo      | string  |          |
| schedule  | string  |          |

### Association
- belongs_to :pet