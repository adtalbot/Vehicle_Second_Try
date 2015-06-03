require('rspec')
require('vehicle')

describe(Vehicle) do
  describe('.all') do
    it('is empty at first') do
      expect(Vehicle.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves a vehicle to the array of saved vehicles') do
    test_vehicle = Vehicle.new('Toyota', 'Prius', 2000)
      expect(test_vehicle.save()).to(eq([test_vehicle]))
    end
  end
end
