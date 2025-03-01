#> vec:zinternal/iter
# Iterates over elements in a `vec`
# Example: `function vec:zinternal/iter {loop: 'tellraw @a {"nbt": "out", "storage": "vec"}', v: test}`
# This would simply print the value of every element for everyone

# Copy over the vec
$data modify storage vec:z_internal iter_copy set from storage vec $(v)
scoreboard players set zzz_vec_iter_len zzz_vec_internal -1
data modify storage vec out set value {}
# If there is an element, begin iterating on it
$execute if data storage vec:z_internal iter_copy[0] run function vec:zinternal/iter_loop {loop: '$(loop)'}

# clean up
data remove storage vec:z_internal iter_copy
data remove storage vec:z_internal iter
data remove storage vec out
scoreboard players reset zzz_vec_iter_len zzz_vec_internal