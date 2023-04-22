class MessagesController < ApplicationController
  def index
    @messages = Message.order('RANDOM()').first
    render json: @messages
  end
end
