class StaticPagesController < ApplicationController

  def home
    @lists = []
    if user_signed_in?
      @lists = current_user.lists
    end
  end

  def search
    @users = User.ransack(username_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json{
        @users = @users.limit(5)
      }
    end
  end

end
