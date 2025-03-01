#> vec:last  
# Returns the last element of a `vec`  
# Fails if no elements  
#
# Arguments:
# v - the vec to operate on  
# Returns: the last element in the vec `(storage vec out, T)`  
#
# Example:
# ```
# function vec:new {v: test, contents: [0, 1, 1, 0, 0, 1]}
# function vec:last {v: test}
# function vec:zinternal/assert {value: 1}
# ```
data remove storage vec out

# Get the length
$function vec:length {v: '$(v)'}
execute store result score zzz_vec_length zzz_vec_internal run data get storage vec out

# Fail if no elements
execute if score zzz_vec_length zzz_vec_internal matches ..0 run return fail

# Get the last element (length - 1)
scoreboard players set zzz_vec_element zzz_vec_internal -1
scoreboard players operation zzz_vec_element zzz_vec_internal += zzz_vec_length zzz_vec_internal

# Move over data for get call
$data modify storage vec:z_internal v set value '$(v)'
execute store result storage vec:z_internal i int 1 run scoreboard players get zzz_vec_element zzz_vec_internal

# This makes the last element be returned to out
function vec:get with storage vec:z_internal

# Cleanup
scoreboard players reset zzz_vec_length zzz_vec_internal
scoreboard players reset zzz_vec_element zzz_vec_internal