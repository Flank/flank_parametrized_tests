gcloud beta firebase test android run \
  --type instrumentation \
  --app app-debug.apk \
  --test app-multiple-success-debug-androidTest.apk \
  --device model=NexusLowRes,version=28,locale=en,orientation=portrait \
  --test-targets-for-shard "class com.example.test_app.ParametrizedTest#shouldHopefullyPass"
