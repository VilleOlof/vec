#> vec:push  
# Appends a value onto a `vec`  
# And returns the value appended  
# Fails if there is no `vec`  
#
# Arguments:  
# v - the vec to operate on  
# value - the element to push onto the vec  
# Returns: the value that got pushed `(storage vec out, T)` | fail  
#
# Example:  
# ```
# function vec:new {v: test, contents: ["foo"]}  
# function vec:push {v: test, value: "bar"}  
# function vec:zinternal/assert {value: "bar"}  
# ```
data remove storage vec out

$execute unless data storage vec $(v) run return fail

$data modify storage vec $(v) append value $(value)

$data modify storage vec out set from storage vec $(v)