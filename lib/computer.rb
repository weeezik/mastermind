class Computer
  def initialize
  end

  # private
  def generate_secret_code colors
    computers_secret_code = []
    4.times do 
      computers_secret_code << colors.sample
    end
    computers_secret_code
  end
end