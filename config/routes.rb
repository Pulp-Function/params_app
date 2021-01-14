Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params_path" => "params_examples#query_params_method"
    get "/name_path" => "params_examples#name_method"
    get "/guess_query_path" => "params_examples#guess_query_method"

    get "/segment_params_path/:blog_post_title" => "params_examples#segment_params_method"
    get "/guess_segment_path/:guess" => "params_examples#guess_query_method"
  end
end
