module Messaging
  class MessagingController < ApplicationController
    before_filter :authenticate_user!
  end
end
