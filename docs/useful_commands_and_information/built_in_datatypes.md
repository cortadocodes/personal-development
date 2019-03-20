# Built-in datatypes

# Sequences
| Name | Mutable? | Strengths | Weaknesses | Notes |
| ---- | -------- | --------- | ---------- | ----- |
| `tuple` | No | Simpler, immutable list |
| `collections.namedtuple` | No | Good as records and simple data classes |
| `list` | Yes |  | Inefficient appending to left side |
| `set` | No | Fast membership querying; natural deduplication; powerful set operations |
| `array.array` | Yes | Very efficient and fast storage and access to numerical types | Only applicable to numerical types; must specify underyling C-type to use |
| `memoryview` | Depends on object viewed | Memory-efficient way of viewing parts of sequences |
| `queue` | Yes |
| `collections.deque` | Yes | Appending/popping from both ends; can be given a maximum size; supports rotation of elements | Slow removing of items in the middle | 'deque' stands for double-ended queue |
