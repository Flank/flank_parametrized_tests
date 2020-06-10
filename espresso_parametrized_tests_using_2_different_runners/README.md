app-debug.apk & app-multiple-success-debug-androidTest.apk

branch `#809-Fix-parameterized-testing`
commit `acf8f30d5f2f1b693691493443bc15d769111ab`
url https://github.com/Flank/flank/pull/840/commits/acf8f30d5f2f1b693691493443bc15d769111ab

./gcloud.sh
- https://console.firebase.google.com/u/0/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8404889129735200372/executions/bs.366d5ab8433ca4c1/test-cases
- Everything is ok

./gcloud-sharding.sh
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/7936716163942835199/executions/bs.91af5d3f3c840c76/test-cases
- Everything is ok

./master.sh disable-sharding-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/6716887100014801001/executions/bs.5c38edd29367c3f1/test-cases
- @RunWith(JUnitParamsRunner::class) not running

./master.sh orchestrator-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8122214400763574359/executions/bs.bccefadbea565c6d/test-cases
- @RunWith(JUnitParamsRunner::class) not running

./master.sh disable-sharding-true.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8748839403722827744/executions/bs.74c1fed961f7e725/test-cases
- Everything is ok

./parametrized_fix.sh disable-sharding-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/4960436760361668167/executions/bs.61d25185d01142fe/test-cases
- Everything is ok

./parametrized_fix.sh disable-sharding-true.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8987424021443128667/executions/bs.2ff84a9b887bbaef/test-cases
- Everything is ok

./parametrized_fix.sh orchestrator-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/6319757319801518343/executions/bs.33337fed127532b1/test-cases
- Everything is ok

./parametrized_fix.sh orchestrator-true.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/7809772954244800450/executions/bs.f665cdc25675e239/test-cases
- Wrong results

```
diff android_shards-master.json android_shards-parametrized_fix.json
10d9
<         "class com.example.test_app.ParameterizedTest#shouldHopefullyPass",
13d11
<         "class com.example.test_app.parametrized.EspressoParametrizedClassTestParameterized#clickRightButton",
15c13,15
<         "class com.example.test_app.parametrized.EspressoParametrizedMethodTestJUnitParamsRunner#clickRightButtonFromMethod"
---
>         "class com.example.test_app.parametrized.EspressoParametrizedMethodTestJUnitParamsRunner#clickRightButtonFromMethod",
>         "class com.example.test_app.ParameterizedTest",
>         "class com.example.test_app.parametrized.EspressoParametrizedClassTestParameterized"
```
