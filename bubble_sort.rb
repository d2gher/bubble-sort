def bubble_sort(arr)
  arr.each_with_index do |_number, index|
    sorted = true
    arr[0..(index + 1) * -1].each_with_index do |number, position|
      next unless arr[position + 1]

      if number > arr[position + 1]
        arr[position], arr[position + 1] = arr[position + 1], arr[position]
        sorted = false
      end
      next
    end
    break if sorted
  end
  arr
end

input = [4, 3, 78, 2, 0, 2]

p bubble_sort(input)
# => [0, 2, 2, 3, 4, 78]
