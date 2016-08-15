class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  helper_method :mobile?

   private

   def mobile? # has to be in here because it has access to "request"
      request.user_agent =~ /\b(Android|iPhone|iPad|Windows Phone|Opera Mobi|Kindle|BackBerry|PlayBook)\b/i
   end
   
  protect_from_forgery with: :exception
  
  BASE_URL = 'http://gtautotransport.com'.freeze
  
  
  def canonical_url(path = '')
      URI.join(BASE_URL, path)
  end
end
