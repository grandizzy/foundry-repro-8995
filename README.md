`forge test --mt testCreate -vvvv --no-metadata`

- without fix traces shows `ERC1967Proxy`:

```bash
Traces:
  [586367] CounterTest::testCreateUUPSCounter()
    ├─ [472391] → new Counter@0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f
    │   └─ ← [Return] 2359 bytes of code
    ├─ [48901] → new ERC1967Proxy@0x2e234DAe75C793f67A35089C9d99245E1C58470b
    │   ├─ emit Upgraded(implementation: Counter: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f])
    │   └─ ← [Return] 123 bytes of code
    └─ ← [Stop] 
```

- with fix traces shows `UUPSProxy`:

```bash
Traces:
  [586367] CounterTest::testCreateUUPSCounter()
    ├─ [472391] → new Counter@0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f
    │   └─ ← [Return] 2359 bytes of code
    ├─ [48901] → new UUPSProxy@0x2e234DAe75C793f67A35089C9d99245E1C58470b
    │   ├─ emit Upgraded(implementation: Counter: [0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f])
    │   └─ ← [Return] 123 bytes of code
    └─ ← [Stop] 
```
