module Fog
  module Parsers
    module Terremark
      class NodeService < Base
        def reset
          @response = {}
        end

        def end_element(name)
          case name
          when "Description", "Href", "IpAddress", "Name", "Protocol"
            @response[name] = value
          when "Enabled"
            if value == "false"
              @response[name] = false
            else
              @response[name] = true
            end
          when "Id", "Port"
            @response[name] = value.to_i
          end
        end
      end
    end
  end
end
