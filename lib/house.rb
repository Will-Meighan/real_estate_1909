class House

  attr_reader :price, :address, :length, :width
  attr_accessor :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @length = length
    @width = width
  end

  def add_room(new_room)
    @rooms << new_room
  end

  def rooms_from_category(category)
    rooms_from_category = []
    rooms.each do |room|
      if room.category == category
        rooms_from_category << room
      end
    end
    rooms_from_category
  end

  def area
    @rooms.reduce(0) do |total_area, room|
      total_area += room.area
    end
  end

end
