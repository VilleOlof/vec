# vec

A Powerful But Simple API For NBT Data Storage Arrays.  
*(Minecraft 1.21+)*

Inspired mostly by Rust's `Vec`.  

```mcfunction
# Create a new vec & push a value
function vec:new {v: arr, contents: []}
function vec:push {v: arr, value: 852}

# Get the first value
function vec:get {v: arr, i: 0}
# Get the vec length
function vec:length {v: arr}
# Pop & return the last value
function vec:pop {v: arr}

# Iterate over the vec
function vec:for_each {v: arr, cmd: 'tellraw @a {"nbt": "out.value", "storage": "vec"}'}
# Create a new slice from a vec
function vec:slice {v: arr, from: 0, to: 1}

# And more...
```

All the data is stored in `storage vec <v>` and can be directly accessed however you like.  
And every time a function *returns* a value, it is stored in `storage vec out`.  
Do note that some functions may modify the vec itself, and some return nothing.  

## All Functions

- `vec:clear` - Empties the vec  
- `vec:contains` - Checks if the vec contains a value  
- `vec:delete` - Deletes the vec  
- `vec:first` - Gets the first value  
- `vec:for_each` - Iterates over the vec  
- `vec:get` - Gets a value at an index  
- `vec:insert` - Inserts a value at an index  
- `vec:is_empty` - Checks if the vec is empty  
- `vec:last` - Gets the last value  
- `vec:length` - Gets the length of the vec  
- `vec:new` - Creates a new vec  
- `vec:pop_front` - Pops the first value  
- `vec:pop` - Pops the last value  
- `vec:print` - Prints the vec to chat nicely  
- `vec:push` - Pushes a value to the end  
- `vec:remove` - Removes a value at an index  
- `vec:retain` - Retains only values that match a condition  
- `vec:reverse` - Reverses the vec  
- `vec:slice` - Creates a new slice from the vec  
- `vec:truncate` - Truncates the vec to a certain length  
*For further documentation for each function, look in their respective .mcfunction file*  