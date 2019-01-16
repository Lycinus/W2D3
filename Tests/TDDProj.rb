def my_uniq(arr)
    raise("Wrong!") if !arr.is_a?(Array)
    uniq_arr = []
    arr.each do |num|
        if !uniq_arr.include?(num)
            uniq_arr << num
        end
    end
    uniq_arr
end