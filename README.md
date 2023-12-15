rana8_erlang_sample
=====

Erlang hello world example for rana8 powered by Google Cloud Run

About rana8
-----------

rana8 is a PoC project by NTT PC Communications Incorporated.

https://web.arena.ne.jp/service/rana8poc.html

Demo
----

https://erlang-sample.rana8.cloud/

Build and Deploy
-----

If your service id is `erlang-sample-a1b2c3`:
```
gcloud auth activate-service-account --key-file=a1b2c3@rana8-poc.iam.gserviceaccount.com.json
```

```
rebar3 as prod release
cp Dockerfile _build/prod/rel/.
cd _build/prod/rel/
gcloud run deploy erlang-sample-a1b2c3 --project rana8-poc --region asia-northeast1 --platform managed --source .
```

LICENSE
-------

Licensed under TTS QUEST PUBLIC LICENSE.

This is just a sample program to get started.
You can do whatever you want with it.
