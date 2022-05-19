class Tea 
  def flavor
    @flavor = :earl_grey
  end

  def temperature
    @temperature = 220
  end
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/examples.text'
end

RSpec.describe Tea do
  let(:tea) { Tea.new }

  it 'tastes like Earl Grey' do
    expect(tea.flavor).to be :earl_grey
  end

  it 'is hot' do
    expect(tea.temperature).to be > 200.0
  end
end