class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver
      redirect_to root_path, notice: 'Message Sent, Thank you!'
    else
      render 'new', notice: 'Cannot send message.'
    end
  end

end
