$data modify storage vec:z_internal print_msg append value {"text": "$(value)", "color": "gold"}

# Only commas on all elements except the last
$scoreboard players set zzz_vec_print_index zzz_vec_internal $(index)
scoreboard players operation zzz_vec_print_len_limit zzz_vec_internal = zzz_vec_print_len zzz_vec_internal 
scoreboard players remove zzz_vec_print_len_limit zzz_vec_internal 1

execute if score zzz_vec_print_index zzz_vec_internal < zzz_vec_print_len_limit zzz_vec_internal run data modify storage vec:z_internal print_msg append value {"text": ", ", "color": "white"}