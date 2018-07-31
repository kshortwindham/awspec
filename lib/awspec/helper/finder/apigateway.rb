module Awspec::Helper
  module Finder
    module Apigateway
      def find_apigateway_by_id(id)
        res = apigateway_client.get_rest_api({ rest_api_id: id })
        return res if res && res.id == id
        nil
      end

      def find_apigateway_by_name(name)
        rest_apis = apigateway_client.get_rest_apis
        rest_apis.items.each do |item|
          return item if item.name == name
        end
        nil
      end
    end
  end
end
