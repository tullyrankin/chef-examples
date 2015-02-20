require 'chefspec'

describe 'apache::default' do
	let(:chef_run) do
		ChefSpec::SoloRunner.new.converge(described_recipe)
	end

	it 'installs apache' do
		expect(chef_run).to install_package('httpd')
	end
end
