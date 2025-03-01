#> vec:retain  
# Retains only the elements specified by the predicate  
# In other words, removes all elements `value` for which `predicate` returns 0  
#
# Arguments:
# v - the vec to operate on  
# predicate - a function to use to determine if an element should get removed or not  
#             the <predicate> function is called with macros ("value" & "index")  
#             and if the <predicate> returns 0(fail), it will filter out that element  
# Returns: <nothing>  
#
# Example:  
# ```
# # three_or_higher.mcfunction
# $scoreboard players set temp my_score $(value)
# execute if score temp my_score matches 3.. run return 1
# return fail
#
# # load.mcfunction
# function vec:new {v: test, contents: [1, 2, 3, 4, 5]}
# function vec:retain {v: test, predicate: "three_or_higher"}
# function vec:length {v: test}
# function vec:zinternal/assert {value: 3}
# ```
data remove storage vec out

# Iterate & check against predicate
data modify storage vec:z_internal retain set value {}
$function vec:zinternal/iter {v: '$(v)', loop: 'function vec:zinternal/retain {predicate: "$(predicate)"}'}
# copy over to current vec
$data modify storage vec $(v) set from storage vec:z_internal retain.out
# clean up
scoreboard players reset zzz_vec_success zzz_vec_internal
data remove storage vec:z_internal retain
