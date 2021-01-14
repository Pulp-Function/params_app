class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    search_value = params["search"]
    sort = params["sort"]
    @output_message = "Here are the results for #{search_value}, sorted by #{sort}"
    render "query_params.json.jb"
  end

  def name_method
    @output_message = params["input_name"].upcase
    if params["input_name"][0] == "A"
      @second_message = "Hey your name starts with A"
    end
    render "name.json.jb"
  end
end
