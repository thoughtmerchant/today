require 'spec_helper'

describe Rating do
  describe 'validations' do
    it { should_not have_valid(:name).when('', nil) }
    it { should_not have_valid(:score).when('', nil, -2, 2) }
    it { should have_valid(:score).when(-1, 0, 1) }
  end
end
