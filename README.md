Convenience functions for less verbose typed numeric literals/casting. Mostly useful in complex bit fiddling code.

## Example

```
usingnamespace @import("./zigcast.zig");

...

const val = U32(expr) << 2;
```

