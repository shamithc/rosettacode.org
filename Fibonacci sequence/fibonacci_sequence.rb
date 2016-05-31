# F0 = 0
# F1 = 1
# Fn = Fn-1 + Fn-2, if n>1

def fibonacci(n, squence = [1])
  n.times do |i|
  	current, last = squence.last(2)
  	squence << current + (last or 0)
  end

  p squence
end
