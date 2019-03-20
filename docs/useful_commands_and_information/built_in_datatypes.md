# Built-in datatypes

## Sequences
| Name | Mutable? | Flat/container | Strengths | Weaknesses | Notes |
| ---- | -------- | -------------- | --------- | ---------- | ----- |
| `tuple` | No | Container | Simpler, immutable list |
| `collections.namedtuple` | No | Container | Good as records and simple data classes |
| `list` | Yes | Container |  | Inefficient appending to left side |
| `array.array` | Yes | Flat | Very efficient and fast storage and access to numerical types | Only applicable to numerical types; must specify underyling C-type to use |
| `memoryview` | N/A | N/A | Memory-efficient way of viewing parts of sequences |
| `queue` | Yes | Container |
| `collections.deque` | Yes | Container | Appending/popping from both ends; can be given a maximum size; supports rotation of elements | Slow removing of items in the middle | 'deque' stands for double-ended queue |

## Non-sequence containers
| Name | Mutable? | Flat/container | Strengths | Weaknesses | Notes |
| ---- | -------- | -------------- | --------- | ---------- | ----- |
| `set` | No | Container | Fast membership querying; natural deduplication; powerful set operations |
