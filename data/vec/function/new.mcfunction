#> vec:new
# Creates a new `vec` with some contents  
# If a `vec` with the same name (and has at least 1 element) already exists it will fail
#
# Arguments:  
# v - the vec to operate on  
# contents - an array to init the vec with  
# Returns: <nothing> | fail  
#
# Example:  
# ```
# function vec:new {v: test, contents: [56, 3, 13, 56]}
# function vec:get {v: test, i: 2}
# function vec:zinternal/assert {value: 13}
# ```

$execute if data storage vec $(v)[0] run return fail

$data modify storage vec $(v) set value $(contents)