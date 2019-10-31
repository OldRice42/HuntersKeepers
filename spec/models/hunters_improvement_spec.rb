require 'rails_helper'

RSpec.describe HuntersImprovement, type: :model do
  let(:hunter) { create :hunter }
  let(:improvement) { create :improvement }

  describe '#create' do
    subject do
      hunter.improvements << improvement
      hunter.save
    end

    it 'applies the improvement to the hunter' do
      subject
      # expect(improvement).to have_received(:apply).with(hunter)
      expect(hunter.improvements).to include(improvement)
    end

    context 'hunter does not pass improvement validations' do
      let(:errors) { ['Rating would exceed max for improvement.'] }

      before do
        allow(improvement).to receive(:hunter_errors).and_return(errors)
      end

      it 'shows errors' do
        expect{ subject }.to raise_error(ActiveRecord::RecordInvalid)
        expect(hunter).not_to be_valid
        expect(hunter.errors.full_messages.to_sentence).to include(errors.first)
      end
    end
  end
end