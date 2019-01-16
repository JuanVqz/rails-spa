require 'rails_helper'

RSpec.describe CategorySerializer, type: :serializer do
  context "when render index" do
    let(:category) { create :category, name: 'Terror' }
    let(:serializer) { described_class.new(category) }
    let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }

    let(:subject) { JSON.parse(serialization.to_json) }

    it "includes name attribute" do
      expect(subject['name']).to eq category.name
    end
  end # context index

  context "when render show" do
    let(:category) { create :category, :with_movies, name: 'Acción' }
    let(:serializer) { described_class.new(category, show_movies: true) }
    let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }

    let(:subject) { JSON.parse(serialization.to_json) }

    it "includes movies attribute" do
      expect(subject['movies'][0]['name']).to eq 'movie1'
    end
  end # context when render show
end
