# Given an array with each element being the price of the stock, 
# and they are ordered by time, earlier el represents the price at 
# an earlier time. 
# If you have one share to buy and to sell in that day
# return the max profit, always remember to check for edge cases.
# stock_prices = [10, 7, 5, 8, 11, 9] => 6
def get_max_profit(arr)
    raise 'need at least two variables to get a profit' if arr.length < 2 
    # slow version: getting all the possible profit and return the max
    # i = 0 
    # profits = []
    # while i < arr.length - 1 
    #     j = i+ 1
    #     while j < arr.length 
    #         profits << [arr[j] - arr[i]]
    #         j+= 1
    #     end 
    #     i+=1 
    # end 
    # profits.max   This Works, now try to optimize it from O(n!)
    # trying greedy 
    
end 

get_max_profit([10, 7, 5, 8, 11, 9] ) #6
get_max_profit([1])   # raise error 
get_max_profit([4,2]) # -2