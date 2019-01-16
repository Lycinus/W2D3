def my_uniq(arr)
    raise Exception if !arr.is_a?(Array)
    uniq_arr = []
    arr.each do |num|
        if !uniq_arr.include?(num)
            uniq_arr << num
        end
    end
    uniq_arr
end

def two_sum(arr)
    raise Exception if !arr.is_a?(Array)
    sum_arr = []
    (arr.length-1).times do |start_pos|
        (start_pos+1...arr.length).each do |end_pos|
            sum_arr << [start_pos, end_pos] if arr[start_pos] + arr[end_pos] == 0
        end
    end
    sum_arr
end

def my_transpose(arr)
    raise Exception if !arr.is_a?(Array)
    transposed = []
    
    i = 0
    while i < arr.length
        holder = []
        j = 0
        while j < 3
            holder << arr[j][i]
            j += 1
        end
        transposed << holder
        i += 1
    end
    transposed
end