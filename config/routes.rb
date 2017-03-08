Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get"/top"=>"home#top"
  get"/articles/new"=>"articles#new"
  #左と右が同じときは省略可（get'articles/new'のみ）
  post '/articles/new' => 'articles#create'
  get'/articles/index'=>'articles#index'
  get'/articles/:id' =>'articles#show', as:'show_article'
  get'/articles/:id/edit'=>'articles#edit', as:'edit_article'
  patch '/articles/:id'=> 'articles#update', as:'update_article'
  delete '/articles/:id'=> 'articles#destroy', as:'destroy_article'

end
