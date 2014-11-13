module Fog
  module Parsers
    module Terremark
      module Shared
        autoload :Base, 'fog/parsers/terremark/shared/base'
        autoload :GetCatalog, 'fog/parsers/terremark/shared/get_catalog'
        autoload :GetCatalogItem, 'fog/parsers/terremark/shared/get_catalog_item'
        autoload :GetInternetServices, 'fog/parsers/terremark/shared/get_internet_services'
        autoload :GetKeysList, 'fog/parsers/terremark/shared/get_keys_list'
        autoload :GetNetworkIps, 'fog/parsers/terremark/shared/get_network_ips'
        autoload :GetNodeServices, 'fog/parsers/terremark/shared/get_node_services'
        autoload :GetOrganization, 'fog/parsers/terremark/shared/get_organization'
        autoload :GetOrganizations, 'fog/parsers/terremark/shared/get_organizations'
        autoload :GetPublicIps, 'fog/parsers/terremark/shared/get_public_ips'
        autoload :GetTasksList, 'fog/parsers/terremark/shared/get_tasks_list'
        autoload :GetVappTemplate, 'fog/parsers/terremark/shared/get_vapp_template'
        autoload :GetVdc, 'fog/parsers/terremark/shared/get_vdc'
        autoload :InstantiateVappTemplate, 'fog/parsers/terremark/shared/instantiate_vapp_template'
        autoload :InternetService, 'fog/parsers/terremark/shared/internet_service'
        autoload :Network, 'fog/parsers/terremark/shared/network'
        autoload :NodeService, 'fog/parsers/terremark/shared/node_service'
        autoload :PublicIp, 'fog/parsers/terremark/shared/public_ip'
        autoload :Task, 'fog/parsers/terremark/shared/task'
        autoload :Vapp, 'fog/parsers/terremark/shared/vapp'
      end
    end
  end
end
