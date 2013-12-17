TimelineApp::Application.routes.draw do
  devise_for :users

  root to: "home#index"
  get "home/theme/:theme", to: "home#theme", as: :change_theme

  resources :users do
    mount MyTimeline::Engine => '/timeline', as: :my_timeline
  end
end
