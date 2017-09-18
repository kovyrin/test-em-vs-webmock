## What is it?

This repo contains a reproducible test case for EventMachine interaction with Webmock that causes the following error:

```
 Failure/Error: Unable to find com.rubyeventmachine.EmReactor.setCommInactivityTimeout(com/rubyeventmachine/EmReactor.java to read failed line
 Java::JavaLang::NullPointerException:
 # com.rubyeventmachine.EmReactor.setCommInactivityTimeout(com/rubyeventmachine/EmReactor.java:448)
 # java.lang.reflect.Method.invoke(java/lang/reflect/Method.java:606)
 # RUBY.block in (root)(/Users/kovyrin/work/OPENSOURCE/test-em-vs-webmock/spec/repro_spec.rb:19)
 # java.util.concurrent.ThreadPoolExecutor.runWorker(java/util/concurrent/ThreadPoolExecutor.java:1145)
 # java.util.concurrent.ThreadPoolExecutor$Worker.run(java/util/concurrent/ThreadPoolExecutor.java:615)
 # java.lang.Thread.run(java/lang/Thread.java:745)
```

## How to use it?

Run the following command to trigger the error:

```
bundle exec rspec spec
```

Run the following command to disable webmock and see it working:

```
NO_MOCK=1 bundle exec rspec spec
```
