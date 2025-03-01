#> vec:clear  
# Removes all elements from a `vec`  
#
# Arguments:  
# v - the vec to operate on  
# Returns: <nothing>  
#
# Example:  
# ```
# function vec:new {v: test, contents: ["we", "wee", "wee"]}  
# function vec:clear {v: test}  
# function vec:length {v: test}  
# function vec:zinternal/assert {value: 0}  
# ```
data remove storage vec out

$data modify storage vec $(v) set value []