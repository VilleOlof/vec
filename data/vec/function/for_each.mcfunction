#> vec:for_each  
# Iterates over every element in a `vec`.  
# Current indexed data is available in `storage vec out` as `out.value` & `out.index`  
# Iteration can also be broken out of when setting `storage vec:z_internal iter.break` to true  
#
# Arguments:  
# v - the vec to operate on  
# cmd - the command to execute upon every iteration
# Returns: <nothing>
#
# Example:  
# ```
# function vec:new {v: test, contents: ["a1", "b1", "c2", "d7"]}
# function vec:for_each {v: test, cmd: 'tellraw @a {"nbt": "out.value", "storage": "vec"}'}
# # Result in chat:
# # a1
# # b1
# # c2
# # d7
# ```
data remove storage vec out

$function vec:zinternal/iter {v: '$(v)', loop: '$(cmd)'}