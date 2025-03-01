#> vec:print  
# Prints the an entire `vec` into the chat  
# Format of: "vec_name [0, 1, 2, 3, ...]"  
# You can also hover on the `vec` in the chat to see it's length  
#
# Arguments:  
# v - the vec to operate on  
# Returns: <nothing>  
#
# Example:  
# ```
# function vec:new {v: test, contents: [true, false, true, true]}  
# function vec:print {v: test}  
# # Chat output:  
# # test [true, false, true, true]  
# # (but colored)  
# ```
data remove storage vec out

$function vec:length {v: '$(v)'}
execute store result score zzz_vec_print_len zzz_vec_internal run data get storage vec out

data modify storage vec:z_internal print_msg set value []

data modify storage vec:z_internal print_msg append value {"text": "[", "color": "white"}
$function vec:zinternal/iter {v: '$(v)', loop: 'function vec:zinternal/macros/debug_print with storage vec out'}
data modify storage vec:z_internal print_msg append value {"text": "]", "color": "white"}

$tellraw @a [{"text": "$(v) ", "color": "gray"}, {\
    "storage": "vec:z_internal",\
    "nbt": "print_msg",\
    "interpret": true,\
    "hoverEvent": {\
        "action": "show_text",\
        "contents": ["Length: ", {\
            "score": {\
                "name": "zzz_vec_print_len",\
                "objective": "zzz_vec_internal"\
            }\
        }]\
    }\
}]

# Cleanup
scoreboard players reset zzz_vec_print_len zzz_vec_internal
scoreboard players reset zzz_vec_print_index zzz_vec_internal
scoreboard players reset zzz_vec_print_len_limit zzz_vec_internal
data remove storage vec:z_internal print_msg