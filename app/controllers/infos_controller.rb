class InfosController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:send_email]

  def send_email
    SecMailer.sec_sender(params[:email],params[:message],params[:subject],params[:name]).deliver_now
    render nothing: true, status: :ok
  end

end
