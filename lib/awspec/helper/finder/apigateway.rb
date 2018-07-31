module Awspec::Helper
  module Finder
    module Apigateway
      def find_apigateway(id)
        res = apigateway_client.get_rest_api({ rest_api_id: id })
        return res if res
        items = apigateway_client.get_rest_apis({})
        items.each do |item|
          return item if id == item[:name]
        end
        null
      end
    end
  end
end
