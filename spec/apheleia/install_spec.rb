require 'spec_helper'

describe 'apheleia::install' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }
end
