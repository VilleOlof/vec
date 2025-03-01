# Copy over value
data modify storage vec:z_internal contains.copy set from storage vec out.value

# Try setting the copied value with the given value
execute store success score zzz_vec_contains_success zzz_vec_internal run data \
    modify storage vec:z_internal contains.copy \
    set from storage vec:z_internal contains.value

# If the success was 1, it did set the value to another, which means they were different
# and thus the "value" isnt contained, yet
execute if score zzz_vec_contains_success zzz_vec_internal matches 1 run return 0
# but if we got past this, it does exist! (and so we break)
data modify storage vec:z_internal contains.result set value true
data modify storage vec:z_internal iter.break set value true