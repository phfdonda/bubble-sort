def bubble_sort(array)

  size = array.length - 1
  loop do
    swapped = false
    0.upto(size).each do |n|
      if array[n].to_i > array[n + 1].to_i
        array[n + 1], array[n] = array[n], array[n + 1]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

a = [2, 6, 1, 7, 5, 2, 9, 32, 91, 42, 99, 32, 23]
puts bubble_sort(a)

def bubble_sort_by(array)

  loop do
    swapped = false
    (0..(array.length - 2)).each do |n|
      if yield(array[n], array[n + 1]).positive?
        array[n], array[n + 1] = array[n + 1], array[n]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

cats = ["gwenyvar", "ajani", "aladim", "sid", "sirius"]
puts bubble_sort_by(cats){|left, right| left.length - right.length}
