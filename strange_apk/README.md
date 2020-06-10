app-single-success-debug.apk
app-single-success-debug-androidTest.apk

https://github.com/bootstraponline/flank_bug/commit/aecc12a5543e860b7c35e6780a932ff4a8aa0f38

Source code: unknown 

Decompiled code:
```
import androidx.test.ext.junit.runners.AndroidJUnit4;
import kotlin.Metadata;
import org.junit.Test;
import org.junit.runner.RunWith;@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/example/test_app/InstrumentedTest;", "Lcom/example/test_app/BaseInstrumentedTest;", "()V", "test", "", "app_singleSuccessDebug"}, k = 1, mv = {1, 1, 15})
@RunWith(AndroidJUnit4.class)
/* compiled from: InstrumentedTest.kt */
public final class InstrumentedTest extends BaseInstrumentedTest {
    @Test
    public final void test() {
        testMethod();
    }
}
```

./gcloud.sh
https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/6863124226144714655/executions/bs.a2f29a317006c5c2/test-cases
- We need to investigate why tests case name is different in firebase and android_shards.json  

./gcloud_sharding.sh
https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/8130649400192067831

./parametrized_fix.sh disable-sharding-true.yml
https://console.firebase.google.com/project/flank-open-source/testlab/histories/bh.da0c237aaa33732/matrices/6684388667659871924
