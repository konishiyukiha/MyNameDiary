Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get"/top"=>"home#top"
  get"/articles/new"=>"articles#new"
  post '/articles/new' => 'articles#create'
end

#homecontrollerを行うと、homecontrollerの中のtopという処理を行う
#TOPという処理はviewでいうhomeの中のtop.html.erbを表示するということ