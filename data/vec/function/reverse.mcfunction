#> vec:reverse  
# Reverses the order of all elements in a `vec` in place  
#
# Arguments:  
# v - the vec to operate on  
# Returns: <nothing>  
#
# Example:  
# ```
# function vec:new {v: test, contents: [1, 2, 3, 4, 5, 6]}
# function vec:reverse {v: test}
# function vec:get {v: test, i: 1}
# function vec:zinternal/assert {value: 5}
# ```
data remove storage vec out

$function vec:zinternal/iter {v: '$(v)', loop: 'data modify storage vec:z_internal reverse_array prepend from storage vec out.value'}
$data modify storage vec $(v) set from storage vec:z_internal reverse_array
data remove storage vec:z_internal reverse_array