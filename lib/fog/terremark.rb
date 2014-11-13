require 'fog/terremark/version'
require 'fog/core'
require 'fog/xml'
require 'fog/terremark/parser'

module Fog
  module Terremark
    autoload :Shared, 'fog/terremark/shared'
    autoload :Vcloud, 'fog/terremark/vcloud'

    VCLOUD_OPTIONS = [:terremark_vcloud_username, :terremark_vcloud_password]
  end
end
