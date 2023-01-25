# app/controllers/concerns/http_auth_concern.rb
module HttpAuthConcern  
  extend ActiveSupport::Concern
  included do
      before_action :http_authenticate
  end
  def http_authenticate
      authenticate_or_request_with_http_basic do |username, password|
          username == 'Jungle' && password == 'book'
      end
  end
end