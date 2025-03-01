#> vec:truncate  
# Shortens a `vec`, keeping the first `length` elements & removing the rest.  
# Will fail if `length` is more than the vec's length
#
# Arguments:  
# v - the vec to operate on  
# length - the first n:th elements to keep  
# Returns: <nothing> | fail  
#
# Example:  
# ```
# function vec:new {v: test, contents: ["a", "b", "c", "d", "e"]}
# function vec:truncate {v: test, length: 2}
# function vec:lenght {v: test}
# function vec:zinternal/assert {value: 2}
# ```
data remove storage vec out

$function vec:length {v: '$(v)'}
execute store result score zzz_vec_truncate_vec_len zzz_vec_internal run data get storage vec out

data modify storage vec:z_internal truncate.result set value []
$scoreboard players set zzz_vec_truncate_length zzz_vec_internal $(length)

execute if score zzz_vec_truncate_length zzz_vec_internal > zzz_vec_truncate_vec_len zzz_vec_internal run return fail

$function vec:zinternal/iter {v: '$(v)', loop: 'function vec:zinternal/truncate'}

# Replace the current `vec`
$data modify storage vec $(v) set from storage vec:z_internal truncate.result

# Cleanup
data remove storage vec:z_internal truncate
scoreboard players reset zzz_vec_truncate_vec_len zzz_vec_internal
scoreboard players reset zzz_vec_truncate_length zzz_vec_internal
scoreboard players reset zzz_vec_truncate_index zzz_vec_internal