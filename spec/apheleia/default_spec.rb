require 'spec_helper'

describe 'apheleia::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'creates cron[apheleia_configure_nerve]' do
    expect(chef_run).to create_cron('apheleia_configure_nerve')
  end
end
