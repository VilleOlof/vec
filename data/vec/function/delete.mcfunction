#> vec:delete
# Removes a `vec` entirely.  
# Unlike `vec:clear`, this removes its entire key & value.  
#
# Arguments:  
# v - the vec to operate on  
# Returns: <nothing>  
#
# Example
# ```
# function vec:new {v: test, contents: [true, false, false]}
# function vec:delete {v: test}
# # This function call should fail
# function vec:get {v: test, i: 0}
# ```

$data remove storage vec $(v)