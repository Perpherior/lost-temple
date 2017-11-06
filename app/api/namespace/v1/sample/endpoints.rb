module Namespace
  module V1
    module Sample
      class Endpoints < Grape::API
        resource :sample do

          desc 'Sample'
          get do
            collection = [
              {
                name: 'test'
              },
              {
                name: 'Yo yo'
              }
            ]
            present collection
          end
        end
      end
    end
  end
end