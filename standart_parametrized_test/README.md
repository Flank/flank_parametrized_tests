app-debug.apk & app-multiple-success-debug-androidTest.apk

branch `#809-Fix-parameterized-testing`
commit `8c19e097a495d5b334acde0d9f40d8978ec434a2`
url https://github.com/Flank/flank/pull/840/commits/8c19e097a495d5b334acde0d9f40d8978ec434a2

./gcloud.sh
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8814766872053425086/executions/bs.21eec9639d40de1a/test-cases
- OK

./gcloud_sharding.sh
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/5720855386368771383/executions/bs.3bfe703a10da9a07/test-cases
- OK

./master.sh flank-orchestrator-true.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/7304308663771487375
- Parameterized test cases not run.

./master.sh flank-orchestrator-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/5644511006251367763
- OK

./parameterized-fix.sh flank-orchestrator-true.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/7245912824727782157
- Parameterized test cases not run.

./parameterized-fix.sh flank-orchestrator-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/6276233649271292283
- OK

./master-dump-shards.sh
```json
{
  "matrix-0": {
    "app": "/Users/janek/projects/flank-project/bugs/param/flank_parametrized_tests/standart_parametrized_test/app-debug.apk",
    "test": "/Users/janek/projects/flank-project/bugs/param/flank_parametrized_tests/standart_parametrized_test/app-multiple-success-debug-androidTest.apk",
    "shards": {
      "shard-0": [
        "class com.example.test_app.InstrumentedTest#test1",
        "class com.example.test_app.InstrumentedTest#test2",
        "class com.example.test_app.foo.FooInstrumentedTest#testFoo"
      ],
      "shard-1": [
        "class com.example.test_app.InstrumentedTest#test0",
        "class com.example.test_app.ParameterizedTest#shouldHopefullyPass",
        "class com.example.test_app.bar.BarInstrumentedTest#testBar"
      ]
    }
  }
}
```

./parametrized-fix-dump-shards.sh
```json
{
  "matrix-0": {
    "app": "/Users/janek/projects/flank-project/bugs/param/flank_parametrized_tests/standart_parametrized_test/app-debug.apk",
    "test": "/Users/janek/projects/flank-project/bugs/param/flank_parametrized_tests/standart_parametrized_test/app-multiple-success-debug-androidTest.apk",
    "shards": {
      "shard-0": [
        "class com.example.test_app.InstrumentedTest#test1",
        "class com.example.test_app.InstrumentedTest#test2",
        "class com.example.test_app.ParameterizedTest"
      ],
      "shard-1": [
        "class com.example.test_app.InstrumentedTest#test0",
        "class com.example.test_app.bar.BarInstrumentedTest#testBar",
        "class com.example.test_app.foo.FooInstrumentedTest#testFoo"
      ]
    }
  }
}
```
