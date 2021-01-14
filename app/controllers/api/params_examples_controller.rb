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

  def guess_query_method
    winning_number = 32
    input_guess = params["guess"].to_i
    if input_guess > winning_number
      @output_message = "Pick lower!"
    elsif input_guess < winning_number
      @output_message = "Pick higher!"
    else
      @output_message = "You win!"
    end
    render "guess_query.json.jb"
  end

  def segment_params_method
    @output_message = "The title is #{params["blog_post_title"]}"
    render "segment_params.json.jb"
  end

  def body_params_method
    @output_message = "Your secret password is #{params["secret_sauce"]}"
    render "body_params.json.jb"
  end
end
