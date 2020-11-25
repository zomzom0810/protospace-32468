# ProtoSpace

## users テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| email     | string | null: false | 
| password  | string | null: false | 
| name      | string | null: false |
| profile   | text   | null: false |
| occupation| text   | null: false |
| position  | text   | null: false |
## comments テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| text      | text       | null: false |
| user      | references |             |
| prototype | references |             |
 
## prototype テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| title      | text       | null: false |
| catch_copy | text       | null: false |
| concept    | text       | null: false |
| image      | 　　　　　　 |             |
| user       | references |             |
