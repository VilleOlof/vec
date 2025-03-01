#> vec:pop  
# Removes the first element from a `vec` and returns it.  
# Fails if empty  
#
# Arguments:  
# v - the vec to operate on  
# Returns: the first element `(storage vec out, T)` | fail  
#
# Example:  
# ```
# function vec:new {v: test, contents: [521, 635, 914]}
# function vec:pop_front {v: test}
# function vec:zinternal/assert {value: 521}
# ```
data remove storage vec out

# Get the length
$function vec:length {v: '$(v)'}
execute store result score zzz_vec_length zzz_vec_internal run data get storage vec out

# Fail if no elements
execute if score zzz_vec_length zzz_vec_internal matches ..0 run return fail

# Move over data for remove call
$data modify storage vec:z_internal v set value '$(v)'
data modify storage vec:z_internal i set value 0

# Remove it & thus returns the element
function vec:remove with storage vec:z_internal

# Cleanup
scoreboard players reset zzz_vec_length zzz_vec_internal