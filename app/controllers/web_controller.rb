class WebController < ApplicationController
  def home
  end

  def terms
  end

  #GET -/u/:username - Get user from API
  def user
    user_api = HTTParty.get("#{DATABASE_CONF['base_url']}/api/v1/web/users/#{params[:username]}")
    @user = JSON.parse(user_api.body)
    puts @user
     id =@user["user"]["id"]
    showcases_api=HTTParty.get("#{DATABASE_CONF['base_url']}/api/v1/web/users/#{id}/showcases")
    @user_showcases = JSON.parse(showcases_api.body)
    puts @user_showcases

  end

  #GET -/c/:short_id - Get content from API
  def content
    content_api = HTTParty.get("#{DATABASE_CONF['base_url']}/api/v1/web/contents/#{params[:short_id]}/1")
    @content=JSON.parse(content_api.body)
    puts @content
  end
end
