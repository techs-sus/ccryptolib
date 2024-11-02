# CCryptoLib
An integrated collection of cryptographic primitives written in Lua that do not use the CC-Tweaked API.

## Initializing the Random Number Generator
All functions that take secret input may query the library's random generator,
`ccryptolib.random`.

`random.initWithTiming` has been removed for security purposes. Please init the timing with Roblox's `Random` or Lua's `math.random`.

## Notes
- if something doesn't work, report here, not to the original author
- native codegen might make this faster
- as of 11/2/2024, this is completely use at your own risk
- the tests in `./spec` haven't been ported to testez
