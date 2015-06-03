require('rspec')
require('pry')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end
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
  describe('.clear') do
    it('clears out the array of saved vehicles') do
      Vehicle.new('Toyota', 'Prius', 2000).save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end
  describe('#age') do
    it('returns the vehicles age') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end 
  describe('#worth_buying?') do
    it('determines if the car is american and less than 15 years old') do
      american_cars = %w(buick, GM, Ford)
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2000)
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end
end
