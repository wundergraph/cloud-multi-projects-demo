# Multi workspace demo

This repository demonstrates how to host multiple WunderGraph project in a single repository to deploy them as individual WunderGraph Cloud projects.
Based on the current build project, the right workspace path is read from the [`wg.toml`](wg.toml) file. Please modify the file to match your project names.

## Structure

The repository contains two WunderGraph projects:

```
wg.toml
project-a/
├─ wundergraph.config.ts
├─ package.json
project-b/
├─ wundergraph.config.ts
├─ package.json
```

### Deploy to WunderGraph Cloud

1. Fork this repo
2. Sign in to [WunderGraph Cloud](https://cloud.wundergraph.com)
3. Create a new project
4. Import the forked repo
5. Deploy the project

Try it out (replace `YOUR_PROJECT_NAME` with your project name):

```shell
curl -X GET https://{YOUR_PROJECT_NAME}.wundergraph.dev/operations/Dragons
```

### Make changes

1. Make changes to the `main` branch, e.g. change the query in `.wundergraph/operations/Dragons.graphql`
2. Commit and push the changes

See your changes live in less than a minute.

---

### Learn More

Read the [Docs](https://wundergraph.com/docs).