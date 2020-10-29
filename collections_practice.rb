def sort_array_asc(integers)
    integers.sort do |a, b|
        a <=> b
    end
end

def sort_array_desc(integers)
    integers.sort do |a, b|
        b <=> a
    end
end

def sort_array_char_count(strings)
    strings.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
   array[1], array[2] = array[2], array[1]
   array
end

def swap_elements_from_to (array, a, b)
    array[a], array[b] = array[b], array[a]
    array
end

# if swap_elements_from_to([1, 2, 3, 4, 5], 4, 3) == [1, 2, 3, 5, 4]
#     puts true
# else
#     puts false
# end

def reverse_array(array)
    array.sort do |a, b|
        array.index(b) <=> array.index(a)
    end
end

def kesha_maker(stringsa)
    stringsa.map do |s|
        letters = s.split("")
        letters[2] = "$"
        s = letters.join("")
    end
end
        
def find_a(array)
    array.select {|array| array.start_with?("a")}
end

def sum_array(array)
    array.inject(:+)
end

def add_s(words)
    words.each_with_index.collect do |element, index|
        if index != 1
         element << "s"
        end
    end
    words
end