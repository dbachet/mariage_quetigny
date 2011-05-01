class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale, :default_url_options
  def set_locale
    # if params[:locale] is nil then I18n.default_locale will be used
    I18n.locale = params[:locale] if params.include?('locale')
  end
  
  def default_url_options(options = {})
  	options.merge!({ :locale => I18n.locale })
  end
end
