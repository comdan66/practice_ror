
## 新增
* 專案 `rails new name`
	* ex: `rails new blog`  

<br/> 

* controller `rails generate controller name`
	* ex:  `rails generate controller users`

<br/> 

* model `rails g model user account:string password:string name:string`
	* ex: `rails g model user account:string password:string name:string`

<br/> 

* Migration `rails g migration add_columnName_to_tabileName`




<br/>
<br/>
<br/>
# 設定
* Migration `bin/rake db:migrate`

* 啟動 server
	* `rails server`
	* `rails s`
	* `rails server --binding=127.0.0.1`
	* `rails s --b=127.0.0.1`

*  Debug
	* Gemfile
		* `gem 'pry'`
		* `gem 'pry-remote'`
	* `bundle install`

	* 程式碼中埋入斷點 `binding.pry`，當網頁跑道斷點時 console 會進入 pry 模式。  
	![](./img/01.png =300x)

	* 指令 `params` 可以看到傳入參數。  
	![](./img/02.png =300x)

* 安裝 slim
	* `gem 'slim'`
	* `gem 'slim-rails'`
	* `gem 'redcarpet'`
	* `bundle install`




<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

---

## 心得
* 通常 key 都寫 	` :key`，冒號前面會有空格！
	* validates_presence_of` `:account,` `:name
	* add_column` `:events,` `:status,` `:string
	* User.new(` `:name => "OA",` `:account => "1234")
* 在 `(` 左邊通常不可以有空格！
* new 參考到 [http://blog.trackets.com/2013/08/17/strong-parameters-by-example.html](http://blog.trackets.com/2013/08/17/strong-parameters-by-example.html) 要使用 params.require
* 



## other
* https://github.com/plataformatec/devise


```
<% flash.each do |name, msg| %>
  <%= content_tag :div, msg, class: name %>
<% end %>

<%= content_tag :div, 'xxxx', class: 'sad', data: {a: 's'} %>
```
