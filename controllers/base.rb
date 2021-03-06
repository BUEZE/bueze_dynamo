require 'sinatra/base'
require 'active_support'
require 'active_support/core_ext'

require 'config_env'
require 'aws-sdk'

class BuezeDynamo < Sinatra::Base
  configure :development, :test do
    ConfigEnv.path_to_config("#{__dir__}/../config/config_env.rb")
  end

  configure :production, :development do
    enable :logging
  end

  before do
    @HOST_WITH_PORT = request.host_with_port
  end
end
