require 'serverspec'

set :backend, :exec

describe file('/usr/bin/apheleia') do
  it { should be_executable }
end
