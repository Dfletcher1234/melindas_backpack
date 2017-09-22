class Backpack
  def initialize(day_and_weather)
    @day_and_weather = day_and_weather

    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare

    weather = @day_and_weather[:weather]
    day_of_week = @day_and_weather[:day_of_week]

    # Ensure appropriate clothing is added to backpack
    if weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
 end

    def gym_days
      if day_of_week == 'monday' || day_of_week == 'thursday'
        #add gym shoes to items
        @items << 'gym shoes'

    end

    def dont_bring_snack_on_saturday_and_sunday
      if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    else

      @items << 'snacks'
    end
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def what_is_Melinda_bring
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@day_and_weather[:day_of_week]}, Weather: #{@day_and_weather[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
