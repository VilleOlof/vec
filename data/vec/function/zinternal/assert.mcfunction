#> vec:zinternal/assert
# Checks if `storage vec out` matches an exact `value`

# Reset
data modify storage vec:z_internal assert.copy set from storage vec out
scoreboard players reset zzz_vec_assert zzz_vec_internal

$execute store success score zzz_vec_assert zzz_vec_internal run data modify storage vec:z_internal assert.copy set value $(value)
data remove storage vec:z_internal assert

execute if score zzz_vec_assert zzz_vec_internal matches 0 run return 1
return fail