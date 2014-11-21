require 'minitest_helper'
require 'base64'

mock_excon = true

mock_org_list = '<OrgList xmlns="http://www.vmware.com/vCloud/v0.8"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<Org href="https://services.vCloudexpress.terremark.com/api/v0.8a-ext1.6/org/32"
type="application/vnd.vmware.vCloud.org+xml" name="Org Name"/>
</OrgList>'

test_user = 'testtesttesttesttesttest@example.com'
test_password = '1234567890testtesttest1234567890123456'
test_authstring = "Basic #{Base64.strict_encode64("#{test_user}:#{test_password}")}"

describe Fog::Terremark::Vcloud do

  before do
    Excon.defaults[:mock] = mock_excon
    Excon.stub(
      {
        :method => :post,
        :path => '/api/v0.8a-ext1.6/login',
        :headers => {
          'Authorization' => test_authstring,
          'Content-Type' => 'application/vnd.vmware.vcloud.orgList+xml',
          'Host' => 'services.vcloudexpress.terremark.com:443',
          'User-Agent' => 'fog-core/1.25.0'
        }
      },
      {
        :status => 200,
        :headers => {
          'Set-Cookie' => 'test-cookie',
        },
        :body => mock_org_list
      }
    )
  end

  it 'gets a login token' do
    service = Fog::Terremark::Vcloud.new(
        :terremark_vcloud_username => test_user,
        :terremark_vcloud_password => test_password)
    service.send(:auth_token)
  end
end
