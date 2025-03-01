#> vec:insert  
# Inserts a `value` into a `vec` at `index` & shifts all other elements to the right after it.  
# Returning the inserted value  
#
# Arguments:  
# v - the vec to operate on  
# i - the index to insert the <value> at  
# value - the value to insert  
# Returns: the inserted element `(storage vec out, T)`  
#
# Example:  
# ```
# function vec:new {v: test, contents: [0b, 1b, 1b, 0b]}
# function vec:insert {v: test, i: 2, value: 0b}
# function vec:zinternal/assert {value: 0b}
# ```
data remove storage vec out

$data modify storage vec $(v) insert $(i) value $(value)

$data modify storage vec out set from storage vec $(v)[$(i)]