# 基本概念

* `config/routes.rb` 設定 `resources :users`  

* 主要記憶格式: `[custom route]_user[s]_path( user ), :method => GET | POST | PUT | DELETE`  

* 特別注意 delete 時因為 link_to 或沒有在 JavaScript 下無法使用 delete method，所以推薦使用 button_to : `button_to 'delete', user_path(user), :method => :delete`  

* 若 ajax 的狀況，把 ajax 中的 option 設成 delete 或相對應的 http method 即可！  

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

