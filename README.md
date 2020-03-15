# private-npm-workshop

Demonstrate creation and configuration of a private npm repository for publishing
NodeJS (and TypeScript) packages.  This enables sharing of components with full 
semantic versioning support without releasing the code to public repositories.

Key goals are:

* Incrementally install a private NPM repository using Docker
* Configure read-write and read-only access to the repository
* Configure and publish a sample shared component to the repository
* Configure and build a sample application which uses the shared component

# To initiate a live demo:

1. Install bash and Docker on this system

2. Run the workshop demo script:

```
$ bash demo.sh
```

# Here are listed the actual steps that will be performed by the live demo:

