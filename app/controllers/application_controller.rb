class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale
  def set_locale
    I18n.locale = extract_locale_from_tld || I18n.default_locale
  end
  def extract_locale_from_tld
    parsed_locale = params[:locale]
    return nil if parsed_locale.nil?
    [:fr, :en].include?(parsed_locale.to_sym) ? parsed_locale : nil
  end
end