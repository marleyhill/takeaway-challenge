class Menu
  attr_reader :options

  def initialize
    @options = {
      :pasta => 5.50,
      :sandwich => 3.75,
      :soup => 3.25,
      :coffee => 2.20
    }
  end

  def add(name, price)
    @options[name.to_sym] = price
  end

  def list
    @options.each do |n, p|
      puts "#{n} - £%0.2f" % p
    end
  end

  def get_price(name)
    @options[name]
  end
end
