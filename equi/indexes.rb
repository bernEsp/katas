class Indexes
  def equilibrium(a) 
    result = (0...a.size).select do |index|
      sum_up = a[0...index].inject(&:+)
      sum_down = a[index+1 ... a.size].inject(&:+)
      index if sum_up == 0 || sum_down == 0 || sum_up == sum_down
    end
    result = [-1] if result.empty? 
    result.join(',')
  end
end
