java -jar ../flank-master.jar firebase test android run -c=flank.yml

gcloud beta firebase test android run \
  --type instrumentation \
  --app app-multiple-success-debug.apk \
  --test app-multiple-success-debug-androidTest.apk \
  --device model=NexusLowRes,version=28,locale=en,orientation=portrait \
