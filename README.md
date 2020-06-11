# Flank parametrized tests
 
- flank-master.jar is a build from `master` commit: `77f18db`
- flank-parametrized-test-fix.jar is a build from `#809-Fix-parameterized-testing` commit: `7c74a91045a0292170b910dda57d02257074606c`
https://github.com/Flank/flank/pull/840/commits/7c74a91045a0292170b910dda57d02257074606c

## Conclusions
- branch `master`: `@RunWith(Parameterized::class)` - OK
- branch `master`: `@RunWith(Parameterized::class)` { named } - Not running
- branch `master`: `@RunWith(JUnitParamsRunner::class)` - Not running
- branch `#809-Fix-parameterized-testing`: `@RunWith(Parameterized::class)` OK
- branch `#809-Fix-parameterized-testing`: `@RunWith(Parameterized::class)` { named } - OK
- branch `#809-Fix-parameterized-testing`: `@RunWith(JUnitParamsRunner::class)` { use-orchestrator: false } - OK
- branch `#809-Fix-parameterized-testing`: `@RunWith(JUnitParamsRunner::class)` { use-orchestrator: true } - null tests
- Looks like some parameterized tests classes cannot not be sharded, so we are forced to keep parameterized test methods together.
  https://github.com/Flank/flank/pull/840/ brings necessary fix, but smart sharding may not work for parameterized classes, 
  this should be fixed in different pull request.
