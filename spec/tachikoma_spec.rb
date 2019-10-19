require 'tachikoma'
# RSpec.configure do |config|
#   config.expect_with :minitest
# end

RSpec.describe 'Tachikoma' do
    # let(:tachikoma) { Tachikoma.new() }
    it 'when choose should be valid choices' do
        # %w(R P S)
        tachikoma = Tachikoma.new()
        expect(["R","P","S"]).to include(tachikoma.choose)
    end
    it 'when choose should be invalid choices' do
        tachikoma = Tachikoma.new()
        expect(["A","B","C"]).to_not include(tachikoma.choose)
    end
end
