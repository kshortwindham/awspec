require 'spec_helper'
Awspec::Stub.load 'apigateway'

describe apigateway('deadbeef') do
  it { should exist }
end

describe apigateway('my-apigateway') do
  it { should exist }
end
