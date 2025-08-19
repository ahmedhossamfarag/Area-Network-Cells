# Area Network Cells
A MATLAB or PYTHON program that can be used to define the number of cells needed to cover a certain area and that are capable of supporting a given number of subscribers.
### The program inputs
- Area (length and width in meters)
- User density in this area (in users per square kilometers)
- Minimum signal to interference ratio
- Erlang per user
- Trunk Bandwidth
- Total Bandwidth
- Blocking Probability
### Expected outputs
- Minimum number of cells needed to cover the area
- The type of sectoring used (60, 120, 180)

## Example
### Inputs
```
area = 1e4
user density = 2
minimum signal to interference ratio = 3
user erlang = 0.05
trunck bandwidth = 1
total bandwidth = 100
blocking probability = 0.01
```

### Outputs

```
min number of cells = 124
sectoring = 120
```