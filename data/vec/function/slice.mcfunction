#> vec:slice  
# Returns a slice of a `vec` between `from` & `to`  
# (Inclusive), Total iterations is `to` times  
# `from` cant be higher than `to`
#
# Arguments:  
# v - the vec to operate on  
# from - the starting index (inclusive)  
# to - the ending index (inclusive)  
# Returns: a new vec containg the elements between from & to `(storage vec out, T[])` | fail  
#
# Example:  
# ```
# function vec:new {v: test, contents: [true, false, false, true, true, true]}
# function vec:slice {v: test, from: 2, to: 4}
# function vec:length {v: test}
# function vec:zinternal/assert {value: 3}
# ```
data remove storage vec out

$scoreboard players set zzz_vec_slice_from zzz_vec_internal $(from)
$scoreboard players set zzz_vec_slice_to zzz_vec_internal $(to)

execute if score zzz_vec_slice_from zzz_vec_internal > zzz_vec_slice_to zzz_vec_internal run return fail

data modify storage vec:z_internal slice set value []
$function vec:zinternal/iter {v: '$(v)', loop: 'function vec:zinternal/slice'}
data modify storage vec out set from storage vec:z_internal slice
data remove storage vec:z_internal slice

scoreboard players reset zzz_vec_slice_from zzz_vec_internal
scoreboard players reset zzz_vec_slice_to zzz_vec_internal
scoreboard players reset zzz_vec_slice_index zzz_vec_internal