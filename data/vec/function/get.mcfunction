#> vec:get  
# Returns a copy of an element via an index  
# Fails if there is no element at this index  
#
# Arguments:  
# v - the vec to operate on  
# i - the index of the element to get (0 based)  
# Returns: the specified element `(storage vec out, T)` | fail  
#
# Example:
# ```
# function vec:new {v: test, contents: [true, false, true]}
# function vec:get {v: test, i: 1}
# function vec:zinternal/assert {value: false}
# ```
data remove storage vec out

$execute if data storage vec $(v)[$(i)] run return run data modify storage vec out set from storage vec $(v)[$(i)]
return fail