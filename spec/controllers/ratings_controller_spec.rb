require 'spec_helper'

describe RatingsController do
  describe '#create' do
    let(:params) { { name: 'foo', score: '1' } }

    it 'creates a rating' do
      Rating.should_receive(:create!).with(params.with_indifferent_access)
      post :create, rating: params
      expect(response).to be_success
      expect(response.body).to eq(' ')
    end
  end
end
