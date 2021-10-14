# A state machine written in OCaml

The state machine has state `A` and `B`.

If input is 0, state is changed to `A`.  
If input is 1, state is changed to `B`.

The state machine diagram is shown below.

```
 +-[0]-+          +-[1]-+
 |     |          |     |
 +----->A---[1]-->B<----+
       /\         |
        |         |
        +---[0]---+
---
 From/To    A      B
    A       0      1
    B       0      1

```

# How to build and run?

```
dune build state_machine.exe
```

```
./_build/default/state_machine.exe
```

The result is output in stdout.

```
Initial state: A
Final state: B
```
