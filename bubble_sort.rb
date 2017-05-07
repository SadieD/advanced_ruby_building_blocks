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

print bubble_sort([4,3,78,2,0,2])
print bubble_sort([4,3,78,2,0,2, 5,6,7,1,423,111,232,23,89,-2])
