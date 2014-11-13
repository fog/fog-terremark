module Fog
  module Terremark
    module Shared
      autoload :Common, 'fog/terremark/shared/common'
      autoload :Parser, 'fog/terremark/shared/parser'
      autoload :Real, 'fog/terremark/shared/real'
      autoload :Mock, 'fog/terremark/shared/mock'

      def check_shared_options(options)
        %w{ecloud vcloud}.each do |cloud|
          cloud_option_keys = options.keys.select { |key| key.to_s =~ /^terremark_#{cloud}_.*/ }
          unless cloud_option_keys.length == 0 || cloud_option_keys.length == 2
            raise ArgumentError.new("terremark_#{cloud}_username and terremark_#{cloud}_password required to access teremark")
          end
        end
      end

      def shared_requires
        require 'fog/terremark/models/shared/address'
        require 'fog/terremark/models/shared/addresses'
        require 'fog/terremark/models/shared/network'
        require 'fog/terremark/models/shared/networks'
        require 'fog/terremark/models/shared/server'
        require 'fog/terremark/models/shared/servers'
        require 'fog/terremark/models/shared/image'
        require 'fog/terremark/models/shared/images'
        require 'fog/terremark/models/shared/task'
        require 'fog/terremark/models/shared/tasks'
        require 'fog/terremark/models/shared/vdc'
        require 'fog/terremark/models/shared/vdcs'
        require 'fog/terremark/models/shared/internetservice'
        require 'fog/terremark/models/shared/internetservices'
        require 'fog/terremark/models/shared/nodeservice'
        require 'fog/terremark/models/shared/nodeservices'
        require 'fog/terremark/requests/shared/add_internet_service'
        require 'fog/terremark/requests/shared/add_node_service'
        require 'fog/terremark/requests/shared/create_internet_service'
        require 'fog/terremark/requests/shared/delete_internet_service'
        require 'fog/terremark/requests/shared/delete_public_ip'
        require 'fog/terremark/requests/shared/delete_node_service'
        require 'fog/terremark/requests/shared/delete_vapp'
        require 'fog/terremark/requests/shared/deploy_vapp'
        require 'fog/terremark/requests/shared/get_catalog'
        require 'fog/terremark/requests/shared/get_catalog_item'
        require 'fog/terremark/requests/shared/get_internet_services'
        require 'fog/terremark/requests/shared/get_network'
        require 'fog/terremark/requests/shared/get_network_ips'
        require 'fog/terremark/requests/shared/get_node_services'
        require 'fog/terremark/requests/shared/get_organization'
        require 'fog/terremark/requests/shared/get_organizations'
        require 'fog/terremark/requests/shared/get_public_ip'
        require 'fog/terremark/requests/shared/get_public_ips'
        require 'fog/terremark/requests/shared/get_task'
        require 'fog/terremark/requests/shared/get_tasks_list'
        require 'fog/terremark/requests/shared/get_keys_list'
        require 'fog/terremark/requests/shared/get_vapp'
        require 'fog/terremark/requests/shared/get_vapp_template'
        require 'fog/terremark/requests/shared/get_vdc'
        require 'fog/terremark/requests/shared/instantiate_vapp_template'
        require 'fog/terremark/requests/shared/configure_vapp'
        require 'fog/terremark/requests/shared/power_off'
        require 'fog/terremark/requests/shared/power_on'
        require 'fog/terremark/requests/shared/power_reset'
        require 'fog/terremark/requests/shared/power_shutdown'
      end
    end
  end
end
