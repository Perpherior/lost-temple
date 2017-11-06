module Namespace
  module V1
    class Base < Grape::API
      version ['v1'], using: :accept_version_header

      before do
        # if unsupported_api_version
        #   error!('API Unsupported', 426)
        # end
      end

      mount Sample::Endpoints
    end
  end
end