class River

    attr_reader :name
  
    def initialize(name, stock)
      @name = name
      @stock = stock
    end 
  
    def add_to_stock(fish)
      @stock.push(fish)
    end
  
    def stock_count()
      return @stock.size()
    end

    def supply_fish(fish)
      index = @stock.index(fish)
      @stock.slice!(index, 1)
    end
  
  end
