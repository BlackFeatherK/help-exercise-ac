class Api::MessagesController < ApplicationController

  before_action :default_format_json

  def index
    @messages = Message.all
  end

  protected

  def default_format_json
    request.format = "json" if request.format.to_s == "text/html"
  end

end
