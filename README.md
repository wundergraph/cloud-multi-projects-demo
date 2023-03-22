# Multi-Projects Cloud Demo

This repository demonstrates how to host multiple WunderGraph Cloud projects in a single repository to deploy them as individual WunderGraph Cloud projects.
The right workspace path is read at build time from the [`wg.toml`](wg.toml) file. Please modify the file to match your project names.

## Getting started

```shell
# Your cloud project with the name `a` will be deployed to https://a.wundergraph.dev
cd projects/a && npm i
# Your cloud project with the name `b` will be deployed to https://b.wundergraph.dev
cd projects/b && npm i
```

### Deploy to WunderGraph Cloud

1. Fork this repo
2. Sign in to [WunderGraph Cloud](https://cloud.wundergraph.com)
3. Create a new project with the name `{YOUR_PROJECT_NAME-A}`
4. Import the forked repo
5. Deploy the project
6. Create a second project with the name `{YOUR_PROJECT_NAME-B}`

Try it out (replace `YOUR_PROJECT_NAME` with your project name in your [`wg.toml`](wg.toml) file):

```shell
curl -X GET https://{YOUR_PROJECT_NAME-A}.wundergraph.dev/operations/get
curl -X GET https://{YOUR_PROJECT_NAME-B}.wundergraph.dev/operations/get
```

### Make changes

1. Make changes to the `main` branch, e.g. change the TypeScript operation in `.wundergraph/operations/get`
2. Commit and push the changes

See your changes live in less than a minute.

---

### Learn More

Read the [Docs](https://wundergraph.com/docs).
