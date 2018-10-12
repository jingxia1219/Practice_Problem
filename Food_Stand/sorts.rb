# Part 1: Say that I gave you an array of length n, containing the numbers 1..n in jumbled order. "Sort" this array in O(n) time. 
# You should be able to do this without looking at the input.

def non_comparison_sort(arr)
    result = []
    i = 1 
    while i <= arr.length 
        result << i 
        i+=1
    end 
    p  result 
end 

non_comparison_sort([1,3,4,2,5])

# Part 2: Say that I give you an array of length n with numbers in the range 1..N (N >= n). 
# Sort this array in O(n + N) time. You may use O(N) memory.
def sort2(arr, upper_bound)
    hash = {}
    result = []
    arr.each  { |el| hash[el] = true }
    (1..upper_bound).each do |el|
        result << el if hash[el]
    end 
    p result 
end 

sort2([1,4,3,5,7],7)

# Part 3: Say I give you an array of n strings, each of length k. I claim that, using merge sort, you can sort this in O(knlog(n)), 
# since comparing a pair of strings takes O(k) time.
# I want you to beat that. Sort the strings in O(kn). Hint: do not compare any two strings.assume 
# all strings contain only lowercase letters a..z without whitespace or punctuation.
def sort3(strings, length)
    i = length - 1 
    letters = ("a".."z").to_a
    while i >= 0 
        # O(k)
        buckets = Array.new(26) {[]}
        strings.each do |string|
        buckets[letters.find_index(string[i])] << string 
        # O(n)
        end 
        strings = buckets.flatten
        i-=1
    end 
    p strings
end 

sort3(['cat', 'car', 'bat'],3)

# "car" "cat" "bat"
# "bat" "car" 'cat'


# Remove Duplicates from Sorted Array
# Given a *SORTED* array, remove the duplicates *in-place* such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# Example
# Input: [1, 1, 2]

# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

# It doesn't matter what you leave beyond the new length.

def remove_duplicates(arr)
    (arr.length - 1).times do |i|
        next if arr[i] != arr[i+1]
        arr.delete_at(i)
    end 
    p arr 
end 

remove_duplicates([1, 1, 2])
remove_duplicates([3, 3, 4,5,5,6])
# remove_duplicates([1, 1, 2])