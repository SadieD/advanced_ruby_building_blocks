def bubble_sort(bubble_array)
  sort_flag = true
  loop do
    sort_flag = false
    bubble_array.each_with_index do |x,i|
      if i < bubble_array.length - 1 && x > bubble_array[i + 1]
        bubble_array[i],bubble_array[i+1] = bubble_array[i+1],bubble_array[i]
        sort_flag = true
      end
    end
    break if sort_flag == false
  end
  return bubble_array
end

def bubble_sort_by(bubble_array)
  if block_given?
    sort_flag = true
    loop do
      sort_flag = false
      bubble_array.each_with_index do |x,i|
        if i < bubble_array.length - 1 && (yield(bubble_array[i+1],bubble_array[i])) < 0
          bubble_array[i],bubble_array[i+1] = bubble_array[i+1],bubble_array[i]
          sort_flag = true
        end
      end
      break if sort_flag == false
    end
    return bubble_array
  end
end

puts bubble_sort([4,3,78,2,0,2])
puts bubble_sort([4,3,78,2,0,2, 5,6,7,1,423,111,232,23,89,-2])

bub = bubble_sort_by(["hi","hey","hello"]) do |left, right|
  left.length - right.length
end

puts bub

bub = bubble_sort_by(["hi","hey","hello"]) do |left, right|
  right.length - left.length
end

puts bub
