#> vec:is_empty  
# Returns true if the `vec` has no elements  
#
# Arguments:  
# v - the vec to operate on  
# Returns: if the vec was empty `(storage vec out, bool)`  
#
# Example:  
# ```
# function vec:new {v: test, contents: [52, 14, 72, 91]}  
# function vec:is_empty {v: test}  
# function vec:zinternal/assert {value: false}  
# ```
data remove storage vec out

# Get the length
$function vec:length {v: '$(v)'}
execute store result score zzz_vec_length zzz_vec_internal run data get storage vec out

execute if score zzz_vec_length zzz_vec_internal matches ..0 run return run data modify storage vec out set value true
data modify storage vec out set value false