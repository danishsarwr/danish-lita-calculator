require "spec_helper"

describe Lita::Handlers::Calculator, lita_handler: true do
let(:robot) { Lita::Robot.new(registry) }

subject { described_class.new(robot) }
  
describe ':add' do
it { is_expected.to route("Lita add 2+4") }
it { is_expected.to route("Lita add 2+5") }
it { is_expected.to route("Lita add 4+8") }

it { is_expected.to_not route("Lita add two three") }
it { is_expected.to_not route("Lita add 1e4") }

it 'add numbers' do
send_message 'Lita add 2+3'
expect(replies.last).to eq('2 + 3 = 5')
    end

  end

describe ':subtract' do
it { is_expected.to route("Lita subtract 2 4") }
it { is_expected.to route("Lita subtract    2 5") }
it { is_expected.to route("Lita subtract 4 8") }

it { is_expected.to_not route("Lita subtract two three") }
it { is_expected.to_not route("Lita subtract 1e4") }

it 'subtract numbers' do
send_message 'Lita subtract 2 3'
expect(replies.last).to eq('2 - 3 = -1')
    end

  end
end
