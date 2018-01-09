class SettingsController < ApplicationController
  def change_locale
    l = params[:locale].to_s.strip.to_sym
    l = I18n.default_locale unless I18n.available_locales.include?(l)
    cookies.permanent[:educator_locale] = l
    redirect_to request.referer || root_url
  end

  def change_identity
    l_type = params[:email].to_s.strip.to_sym
    l_type = params[:type].to_s.strip.to_sym
    l_name = params[:name].to_s.strip.to_sym
    cookies.permanent[:leontiste_email] = l_email
    cookies.permanent[:leontiste_type] = l_type
    cookies.permanent[:leontiste_name] = l_name
    redirect_to request.referer || root_url
  end

end