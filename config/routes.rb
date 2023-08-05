Rails.application.routes.draw do

  get("/boards", {:controller => "home", :action => "homepage"})
  post("/new_board", {:controller => "home", :action => "new_board"})
  # Routes for the Post resource:
  get("/boards/:path_id", { :controller => "boards", :action => "show" })

  # CREATE
  post("/insert_post", { :controller => "boards", :action => "create" })
          
  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  # Routes for the Board resource:
          
  # READ
  get("/boards", { :controller => "boards", :action => "index" })
  

  
  # UPDATE
  
  post("/modify_board/:path_id", { :controller => "boards", :action => "update" })
  
  # DELETE
  get("/delete_board/:path_id", { :controller => "boards", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
