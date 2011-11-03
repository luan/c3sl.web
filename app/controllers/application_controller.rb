#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from ActiveRecord::ActiveRecordError do |exception|
    redirect_to '/admin', notice: 'Não faça isso, você sabe que é errado'
  end
end
