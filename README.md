# Nihil Terraform Modules

Collection of Reusable Terraform Modules for Project Nihil

## Getting Started

### Prerequisites

You need to have the ff. setup in your local machine

- Nodejs and NPM
- Terraform
- AWS

## Development

### Setup Local Environment

Install dependencies

```
npm i
```

Setup Git Hooks

```
npm run prepare
```

### Adding New Module

Create a directory at the project root. Name it base on the purpose of the module.


#### Validating Module

In the directory of the module, you can validate the config by running the ff. commands

Initialize Terraform

```
terraform init
```

Format Terraform Config

```
terraform fmt -recursive
```

Validate Terraform Config

```
terraform validate
```

#### Validating Module Usage and Changes

In the `examples` directory, create a new directory with the name the same as the module you created. E.g given a new module named `test`, You should create a directory named `examples/test` 

In the directory you created, add the minimum terraform config that imports the module you created before.

The purpose of this is to verify the inputs of the module and to review the changes it will make


In the directory of the examples/module, you can validate the config by running the ff. commands

Initialize Terraform

```
terraform init
```

Review Changes

```
terraform plan
```

## Release

A feature branch is created for a feature in development and a pull request to develop is created to apply the feature change. 

Follow the convention in creating and merging pull requests

Once the features are ready for release, a pull request from develop to main is created

Once features are merged to main, run the ff. command for the release:

```
npm run release
```

You can see the variants of the command in the package.json file

This command will create a new tag for the release incremented depending on the previous version and the type of features applied in main. This will also create/update the CHANGELOG.md file which contains the list of features of the release.

Now, push the new tag in github

```
git push -u origin <newly-created-tag>
```