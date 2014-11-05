# 學習

## 學習指令
* 新增專案 `rails new name`
* 啟動 `rails server`
* 簡寫 `rails s`
* 設定 ip `rails server --binding=127.0.0.1`、`rails s --b=127.0.0.1`
* 新增 controller `rails generate controller name`
* `bundle install`


## 心得
* 通常 key 都寫 	` :key`，冒號前面會有空格！
	* validates_presence_of` `:account,` `:name
	* add_column` `:events,` `:status,` `:string
	* User.new(` `:name => "OA",` `:account => "1234")
* 在 `(` 左邊通常不可以有空格！

## Migration
* 新增欄位 `rails g migration add_columnName_to_tabileName`