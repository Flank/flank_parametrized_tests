app-debug.apk & app-multiple-success-debug-androidTest.apk

branch `#809-Fix-parameterized-testing`
commit `1b737b85f7992c3b2b8a33bcbd550d37395b7660`
https://github.com/Flank/flank/pull/840/commits/1b737b85f7992c3b2b8a33bcbd550d37395b7660

./gcloud.sh
- https://console.firebase.google.com/u/0/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8404889129735200372/executions/bs.366d5ab8433ca4c1/test-cases
- Everything is ok

./gcloud-sharding.sh
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/7936716163942835199/executions/bs.91af5d3f3c840c76/test-cases
- Everything is ok

./master.sh disable-sharding-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/7906562141028459460/executions/bs.7a87c078fd5138c2/test-cases
- @RunWith(JUnitParamsRunner::class) not running
- @RunWith(Parameterized::class) {named} not running
- @RunWith(Parameterized::class) OK

./master.sh orchestrator-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8122214400763574359/executions/bs.bccefadbea565c6d/test-cases
- @RunWith(JUnitParamsRunner::class) not running
- @RunWith(Parameterized::class) {named} not running
- @RunWith(Parameterized::class) OK

./master.sh disable-sharding-true.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/4975084868977764720/executions/bs.aa9172c6d72082a9/test-cases
- Everything is ok

./parameterized_fix.sh disable-sharding-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8251504264038955869/executions/bs.7a4205c912169ae0/test-cases
- Everything is ok

./parameterized_fix.sh disable-sharding-true.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/4920731649953500845/executions/bs.6eefadacc5d950f0/test-cases
- Everything is ok

./parameterized_fix.sh orchestrator-false.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/6756393285869453599/executions/bs.97e5cde53e607830/test-cases
- Everything is ok

./parameterized_fix.sh orchestrator-true.yml
- https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/5275106389338945148/executions/bs.e21e5e5f5b626dcd
- @RunWith(JUnitParamsRunner::class) not running
- @RunWith(Parameterized::class) {named} OK
- @RunWith(Parameterized::class) OK

```
diff android_shards-master.json android_shards-parameterized_fix.json
10d9
<         "class com.example.test_app.ParameterizedTest#shouldHopefullyPass",
13,16c12,15
<         "class com.example.test_app.parametrized.EspressoParametrizedClassParameterizedNamed#clickRightButton",
<         "class com.example.test_app.parametrized.EspressoParametrizedClassTestParameterized#clickRightButton",
<         "class com.example.test_app.parametrized.EspressoParametrizedMethodTestJUnitParamsRunner#clickRightButtonFromAnnotation",
<         "class com.example.test_app.parametrized.EspressoParametrizedMethodTestJUnitParamsRunner#clickRightButtonFromMethod"
---
>         "class com.example.test_app.ParameterizedTest",
>         "class com.example.test_app.parametrized.EspressoParametrizedClassParameterizedNamed",
>         "class com.example.test_app.parametrized.EspressoParametrizedClassTestParameterized",
>         "class com.example.test_app.parametrized.EspressoParametrizedMethodTestJUnitParamsRunner"
```