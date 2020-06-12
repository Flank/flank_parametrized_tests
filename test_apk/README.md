https://mvnrepository.com/artifact/androidx.test/orchestrator/1.3.0-rc01
https://mvnrepository.com/artifact/androidx.test.services/test-services/1.3.0-rc01

app-debug.apk & app-multiple-success-debug-androidTest.apk
branch `#809-Fix-parameterized-testing`
commit `53aa14262207dfda7ec2feeb8d2c3cef269a1202`
https://github.com/Flank/flank/pull/840/commits/53aa14262207dfda7ec2feeb8d2c3cef269a1202

`./generate_report.sh` will run all gcloud, flank & local tests cases.
Check `results/` dir to see output of each case run.


|           | orchestrator                              |    | disabled         |     | 1.3.0-rc01      |
| ---       | ---:                                      | ---       | ---       | ---       | ---       |					
|           | sharding                                  | disabled  | enabled   | disabled  | enabled   |
| local     | @RunWith(JUnitParamsRunner::class)        | OK        | OK        | OK        | OK        |
| local     | @RunWith(Parameterized::class) {named}    | OK        | OK        | OK        | OK        |
| local     | @RunWith(Parameterized::class)            | OK        | OK        | OK        | OK        |
| gcloud    | @RunWith(JUnitParamsRunner::class)        | OK        | OK        | null test cases | null test cases |
| gcloud    | @RunWith(Parameterized::class) {named}    | OK        | OK        | OK        | OK        |
| gcloud    | @RunWith(Parameterized::class)            | OK        | OK        | OK        | OK	    |		
| flank     | @RunWith(JUnitParamsRunner::class)        | OK        | OK        | null test cases | null test cases |
| flank     | @RunWith(Parameterized::class) {named}	| OK        | OK        | OK        | OK        |
| flank     | @RunWith(Parameterized::class)            | OK        | OK        | OK        | OK        |