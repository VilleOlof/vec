execute store result score zzz_vec_slice_index zzz_vec_internal run data get storage vec out.index

# break if above index, so we dont need to iterate more
execute \
    if score zzz_vec_slice_index zzz_vec_internal >= zzz_vec_slice_to zzz_vec_internal \
    run data modify storage vec:z_internal iter.break set value true

# If "index" is higher than "from", append
execute \
    if score zzz_vec_slice_index zzz_vec_internal >= zzz_vec_slice_from zzz_vec_internal \
    run data modify storage vec:z_internal slice append from storage vec out.value
