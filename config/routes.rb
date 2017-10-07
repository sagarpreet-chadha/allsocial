Rails.application.routes.draw do
 

  get 'friends/index' => 'friends#index' , as: :friends_index
  post 'friends/add/:id' => 'friends#add' , as: :friends_add

  get 'comments/create'

  get 'comments/destroy'

  devise_for :users
  resources :posts, only: [:index, :create, :destroy]
  resources :comments, only: [:create, :destroy]

   root "posts#index"

   post 'likes/post_likes/:id' => 'likes#post_likes' , as: :post_likes
   get 'likes/post_unlikes/:id' => 'likes#post_unlikes' , as: :post_unlikes

   post 'likes/comment_likes/:id' => 'likes#comment_likes' , as: :comment_likes
   get 'likes/comment_unlikes/:id' => 'likes#comment_unlikes' , as: :comment_unlikes

end
