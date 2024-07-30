````(bash)
openapi-generator generate -i swagger.json -g dart-dio -c open-generator-config.yaml
````

````(bash)
flutter packages pub run build_runner build --delete-conflicting-outputs -v
````