# InSpec tests to ensure the correct port is listening and 
# the default home page returns a 200 

describe port(80) do
  it { should be_listening }
end

describe command('curl -IL http://localhost') do
  its('stdout') { should match /HTTP\/1.1\ 200\ OK/ }
end
