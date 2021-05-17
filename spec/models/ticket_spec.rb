require 'rails_helper'

RSpec.describe Ticket do
  fixtures :all

  subject(:ticket) do
    user = users(:samrood)
    event = events(:present)
    Ticket.new(attendee_id: user.id, event_id: event.id)
  end

  let(:invalid_ticket) { Ticket.new }

  describe 'Validity with attendee id and event id' do
    it 'should be valid' do
      expect(subject).to be_valid
    end
  end

  describe 'Ticket is invalid with no user and event' do
    it 'should be invalid' do
      expect(invalid_ticket).not_to be_valid
    end
  end

  describe 'User must be present' do
    it 'should be invalid' do
      subject.attendee_id = nil
      expect(subject).not_to be_valid
    end
  end

  describe 'Event must be present' do
    it 'should be invalid' do
      subject.event_id = nil
      expect(subject).not_to be_valid
    end
  end
end
