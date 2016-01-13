class WelcomeController < ApplicationController
  require 'json'
  
  def json_parser
    respond_to do |format|
      begin
        @resume = JSON.parse params[:json_text]
      rescue
        format.html { redirect_to root_path, :notice => "Invalid json data"}
      end
      format.html { render :resume }
    end      
  end
end
