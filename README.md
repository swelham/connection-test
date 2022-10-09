# DbConnApp

Create a dyno on heroku and configure with the following buildpack

```
https://github.com/HashNuke/heroku-buildpack-elixir.git
```

Set the following environment variables

```
DATABASE_URL: <crunchy bridge url>
POOL_SIZE: 1000
SECRET_KEY_BASE: 9pv4UnaC85c5wDxUmtrxUz/QuuKiu8232egBfk+d3PnSLJ2Sfdg+zN9ci6UQGKKf
```

Note: secret key base can be anything, the above is a working example.

Deploy the app, after around 15 seconds, database connection timeouts and `send: closed` errors will start showing in the logs.