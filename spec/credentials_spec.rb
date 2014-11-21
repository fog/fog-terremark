require 'minitest_helper'

mock_org_list = '<OrgList xmlns="http://www.vmware.com/vCloud/v0.8"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<Org href="https://services.vCloudexpress.terremark.com/api/v0.8a-ext1.6/org/32"
type="application/vnd.vmware.vCloud.org+xml" name="Org Name"/>
</OrgList>'

describe Fog::Terremark::Vcloud do

  before do
    Excon.defaults[:mock] = true
    Excon.stub(
      {:method => :post, :path => '/api/v0.8a-ext1.6/login'},
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
        :terremark_vcloud_username => 'test@example.com',
        :terremark_vcloud_password => '123456')
    service.send(:auth_token)
  end
end
