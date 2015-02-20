require 'serverspec'
set :backend, :exec

describe "apache" do
	it "is awesome" do
		expect(true).to eq true
	end

	it "is installed" do
		expect(package("httpd")).to be_installed
	end

	describe service("httpd") do
		it { should be_enabled }
	end

	it "should be listening on port 80" do
		expect(port(80)).to be_listening
	end

	it "displays hello" do
		expect(command("curl localhost").stdout).to match /CentOS/
	end

end
