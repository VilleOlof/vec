#> vec:remove  
# Removes and returns the element at `i`.  
# Shifting all elements after it to the left.  
# Fails if there is no element at `i`  
#
# Arguments:  
# v - the vec to operate on  
# i - the index of the element to remove  
# Returns: the removed element `(storage vec out, T)` | fail  
#
# Example:  
# ```
# function vec:new {v: test, contents: [942, 422, 661]}
# function vec:remove {v: test, i: 1}
# functfunction vec:zinternal/assert {value: 422}
# ```
data remove storage vec out

$execute unless data storage vec $(v)[$(i)] run return fail

# Copy the element before removing so we can return it
$function vec:zinternal/macros/copy {v: '$(v)', i: $(i)}

$data remove storage vec $(v)[$(i)]

data modify storage vec out set from storage vec:z_internal element