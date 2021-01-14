class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    search_value = params["search"]
    sort = params["sort"]
    @output_message = "Here are the results for #{search_value}, sorted by #{sort}"
    render "query_params.json.jb"
  end
end
