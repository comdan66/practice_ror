# 學習

## 學習指令
* 新增專案 `rails new name`
* 啟動 `rails server`
* 簡寫 `rails s`
* 設定 ip `rails server --binding=127.0.0.1`、`rails s --b=127.0.0.1`
* 新增 controller `rails generate controller name`
* `bundle install`

## restful
* `resources :users`

HTTP method | url            | routes        | link name
------------|----------------|---------------|----------
get         | /users         | users#index   | users
post        | /users         | users#create  | users
get         | /users/:id     | users#show    | user
put         | /users/:id     | users#update  | user
delete      | /users:id      | users#destroy | user
get         | /users/new     | users#new     | new_user
get         | users/:id/edit | users#edit    | edit_user

Helper           | GET                  | POST            | PUT               | DELETE
-----------------|----------------------|-----------------|-------------------|------------------
user_path(@user) | /users/1 (show)      |                 | /users/1 (update) | users/1 (destroy)
users_path       | /users (index)       | /users (create) |                   |
edit_user_path   | /users/1/edit (edit) |                 |                   |
new_user_path    | /users/new (new)     |                 |                   |

* 主要記憶格式: `[custom route]_user[s]_path( user ), :method => GET | POST | PUT | DELETE`
* 特別注意 delete 時因為 link_to 或沒有在 JavaScript 下無法使用 delete method，所以推薦使用 button_to : `button_to 'delete', user_path(user), :method => :delete`
* 若 ajax 的狀況，把 ajax 中的 option 設成 delete 或相對應的 http method 即可！

## debug
* Gemfile 加入 `gem 'pry'`、`gem 'pry-remote'` 這兩行，並且 **bundle** 一次。
* 程式碼中埋入斷點 `binding.pry`，當網頁跑道斷點時 console 會進入 pry 模式。  
![](./img/01.png =300x)
	* 指令 `params` 可以看到傳入參數。  
	![](./img/02.png =300x)



## 心得
* 通常 key 都寫 	` :key`，冒號前面會有空格！
	* validates_presence_of` `:account,` `:name
	* add_column` `:events,` `:status,` `:string
	* User.new(` `:name => "OA",` `:account => "1234")
* 在 `(` 左邊通常不可以有空格！
* new 參考到 [http://blog.trackets.com/2013/08/17/strong-parameters-by-example.html](http://blog.trackets.com/2013/08/17/strong-parameters-by-example.html) 要使用 params.require
* 

## Migration
* 新增欄位 `rails g migration add_columnName_to_tabileName`


## other
* https://github.com/plataformatec/devise
* 