module Awspec::Type
  class Apigateway < ResourceBase
    aws_resource Aws::APIGateway::Client

    def resource_via_client
      return unless @resource_via_client.nil?

      @resource_via_client = find_apigateway_by_id(@display_name)
      return @resource_via_client if @resource_via_client

      @resource_via_client = find_apigateway_by_name(@display_name)
    end

    def id
      return @id unless @id.nil?

      res = resource_via_client
      return unless res

      @id = res.id
    end

    def name
      return @name unless @name.nil?

      res = resource_via_client
      return unless res

      @name = res.name
    end
  end
end
