#> vec:first  
# Returns the first element in a `vec`  
# Fails if no elements  
#
# Arguments:  
# v - the vec to operate on  
# Returns: the first element `(storage vec out, T)` | fail    
#
# Example:
# ```
# function vec:new {v: test, contents: [0, 1, 1, 0, 0, 1]}
# function vec:first {v: test}
# function vec:zinternal/assert {value: 0}
# ```
data remove storage vec out

$execute if data storage vec $(v)[0] run return run data modify storage vec out set from storage vec $(v)[0]
return fail