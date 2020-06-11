# Flank parametrized tests
 
- flank-master.jar is a build from `master` commit: `77f18db`
- flank-parametrized-test-fix.jar is a build from `#809-Fix-parameterized-testing` commit: `6fd2966b29e3566f087ec397d64b6046fce92466`
https://github.com/Flank/flank/pull/840/commits/6fd2966b29e3566f087ec397d64b6046fce92466

## Conclusions
- Test classes annotated with `@RunWith(JUnitParamsRunner::class)` or `@RunWith(Parameterized::class)` 
are not compatible with orchestrator.
- On `master` and `#809-Fix-parameterized-testing` `@RunWith(Parameterized::class)` annotated classed gives correct output.
- On `master` `@RunWith(JUnitParamsRunner::class)` annotated classed doesn't work with sharding.
- On `#809-Fix-parameterized-testing` everything works when `--use-orchestrator` is `false`.
- Looks like some parameterized tests classes cannot not be sharded, so we are forced to keep parameterized test methods together.
  https://github.com/Flank/flank/pull/840/ brings necessary fix, but smart sharding may not work for classes annotated with @RunWith(JUnitParamsRunner::class), 
  this should be fixed in different pull request.
