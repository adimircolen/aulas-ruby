require 'player'
# RSpec.configure do |config|
#   config.expect_with :minitest
# end

RSpec.describe 'Player' do
    let(:player) { Player.new(1) }
    context 'new' do
        it 'when initialize should be a choice' do
            expect(player.pid).to be(1)
        end
    end
    context 'wins' do
        it 'when opponent choice R'
        it 'when opponent choice S'
        it 'when opponent choice P'
    end
end
