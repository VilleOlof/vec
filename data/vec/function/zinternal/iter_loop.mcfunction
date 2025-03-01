# Copy over current item to out so the consumer can use the value
data modify storage vec out.value set from storage vec:z_internal iter_copy[0]
# Index handling (starts at -1, so we can always +1)
scoreboard players add zzz_vec_iter_len zzz_vec_internal 1
execute store result storage vec out.index int 1 run scoreboard players get zzz_vec_iter_len zzz_vec_internal

$$(loop)

# A little thingy so the consumer "can" technically break out of a loop
execute if data storage vec:z_internal iter.break run return run data modify storage vec:z_internal iter_copy set value []

# Remove the element & if there is still an element on index 0, we continue to loop
data remove storage vec:z_internal iter_copy[0]
$execute if data storage vec:z_internal iter_copy[0] run function vec:zinternal/iter_loop {loop: '$(loop)'}