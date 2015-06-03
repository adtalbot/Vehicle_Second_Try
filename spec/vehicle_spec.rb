require('rspec')
require('vehicle')

describe(Vehicle) do
  describe('.all') do
    it('is empty at first') do
    expect(Vehicle.all()).to(eq([]))
    end
  end
end
