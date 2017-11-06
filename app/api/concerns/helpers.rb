module Concerns
  module Helpers
    extend ActiveSupport::Concern

    included do
      helpers do
        def permitted_params
          ActionController::Parameters.new(declared(params, include_missing: false)).permit!
        end
      end
      rescue_from ActiveRecord::RecordNotFound do |e|
        error_response(message: 'Record not found', status: 404)
      end

      rescue_from ActiveRecord::RecordInvalid do |e|
        error_response(message: {'errors': e.record.errors.messages}, status: 422)
      end
    end
  end
end