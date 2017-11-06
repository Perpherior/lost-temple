class ApiClient < Grape::API
  include ::Concerns::Helpers

  CURRENT_VERSION = 'v1'

  format :json

  mount Namespace::V1::Base => 'namespace'

  route :any, '*path' do
    error!("No such route '#{request.path}'", 404)
  end

  add_swagger_documentation api_version: CURRENT_VERSION, hide_format: true, base_path: '/api'
end