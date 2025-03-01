execute store result score zzz_vec_truncate_index zzz_vec_internal run data get storage vec out.index

# If the index is >= than the given length, we can break the iter
execute if score \
    zzz_vec_truncate_index zzz_vec_internal >= zzz_vec_truncate_length zzz_vec_internal \
    run return run data modify storage vec:z_internal iter.break set value true

data modify storage vec:z_internal truncate.result append from storage vec out.value