#> vec:length  
# Returns how many elements is in a `vec`  
#
# Arguments:  
# v - the vec to operate on  
# Returns: how many elements in the vec `(storage vec out, int)`  
#
# Example:  
# ```
# function vec:new {v: test, contents: [0, 1, 4}  
# function vec:length {v: test}  
# function vec:zinternal/assert {value: 3}  
# ```
data remove storage vec out

$execute store result storage vec out int 1 run data get storage vec $(v)