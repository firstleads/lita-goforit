require 'spec_helper'

describe Lita::Handlers::GoForIt, lita_handler: true do
  it 'listens for messages and routes them' do
    expect(subject).to route('go for it').to :gopher
    expect(subject).to route('goes for it').to :gopher
    expect(subject).to route('going for it').to :gopher
    expect(subject).to route('went for it').to :gopher
  end

  it 'does not route another plugin message' do
    expect(subject).to_not route('sandwich')
  end

  it 'replies with a URL' do
    send_message('go for it')
    expect(replies.last).to match(/http/)
  end
end
