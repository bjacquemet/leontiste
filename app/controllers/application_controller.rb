class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  skip_before_action :check_for_lockup

  def set_locale
    if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
      l = cookies[:educator_locale].to_sym
    else
      l = extract_locale_from_accept_language_header
      cookies.permanent[:educator_locale] = l
    end
    I18n.locale = l
  end

  private

  def extract_locale_from_accept_language_header
    case request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    when 'fr'
      'fr'
    when 'en'
      'en'
    else
      'fr'
    end
  end

end
