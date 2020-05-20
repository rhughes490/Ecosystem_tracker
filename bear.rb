class Bear

    attr_reader :name
  
    def initialize(name)
      @name = name
      @ate_fish = []
    #  @stock = []
    end
  
     def ate_fish_count()
       return @ate_fish.length()
     end
  
     def eat_fish(fish)
       @ate_fish << fish
     end
  
    # def ate_fish_count()
    #   return @stock.size()
    # end
  
    # def add_ate_fish(fish)
    #   @stock.push(fish)
    # end
  
  
  end