Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/products" => "products#index"

    get "/products_query" => "products#query"

    get "/products_urlsegparameter/:flavor" => "products#segment"

    get "/products_newquery" => "products#new_query"

    post "/body_parameter" => "products#body_parameter"
  
  end
end
