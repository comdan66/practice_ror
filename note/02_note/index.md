# 學習

## 學習指令
* 新增專案 `rails new name`
* 啟動 `rails server`
* 簡寫 `rails s`
* 設定 ip `rails server --binding=127.0.0.1`、`rails s --b=127.0.0.1`
* 新增 controller `rails generate controller name`
* `bundle install`

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


rails g model user account:string password:string name:string

bin/rake db:migrate

```
<% flash.each do |name, msg| %>
  <%= content_tag :div, msg, class: name %>
<% end %>

<%= content_tag :div, 'xxxx', class: 'sad', data: {a: 's'} %>
```

## 安裝 slim
gem 'slim'
gem 'slim-rails'
gem 'redcarpet'
bundle install

