class MailingsController < ApplicationController
  def new
    @client = Client.find(params[:client_id])
    @mailing = @client.mailings.new
  end
end
