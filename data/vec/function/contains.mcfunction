#> vec:contains  
# Returns true if the `vec` contains an element with the same `value`  
#
# Arguments:  
# v - the vec to operate on  
# value - the value to check with  
# Returns: if the vec contains <value> `(storage vec out, bool)`  
#
# Example:  
# ```
# function vec:new {v: test, contents: ["a", "b", "c"]}
# function vec:contains {v: test, value: "b"}
# function vec:zinternal/assert {value: true}
# ```
data remove storage vec out

data modify storage vec:z_internal contains.result set value false
$data modify storage vec:z_internal contains.value set value $(value)

$function vec:zinternal/iter {v: '$(v)', loop: 'function vec:zinternal/contains'}

data modify storage vec out set from storage vec:z_internal contains.result

# Cleanup
scoreboard players reset zzz_vec_contains_success zzz_vec_internal
data remove storage vec:z_internal contains