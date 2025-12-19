# Gamestate

# How to change switch from a state to another state.
In your state code, you have to write this function :
```gdscript
transitioned.emit(self, "{next_state}")
```
