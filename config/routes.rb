Rails.application.routes.draw do
  devise_for :users, controller: {
    sessions: 'users/sessions'
  }
  resources :posts
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



=begin
<% if current_page?(root_path) %>
  <%= render 'shared/footer' %>
<% end %>

=end
