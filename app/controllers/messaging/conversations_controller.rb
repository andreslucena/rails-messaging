module Messaging
  class ConversationsController < Messaging::MessagingController
    respond_to :js
    load_and_authorize_resource

    def update
      @conversation.update_attributes(params[:conversation])

      render :nothing => true
    end
  end
end