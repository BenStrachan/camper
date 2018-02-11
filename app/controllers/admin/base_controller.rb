module Admin
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action do
      authorize! :manage, :all
    end
  end
end