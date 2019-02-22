# GitHub Action for `gh-pages`

This repo contains [GitHub Action][1] for generating gh-pages. It consists of two actions:

- `create`
- `push`

## Usage

These actions create and publish your `gh-pages` branch inside a `./public` directory. See [Configuration](#Configuration) to learn how to change that directory.

You can use these actions in your workflow like this

```workflow
action "Prep gh-pages" {
  uses = "tswicegood/github-actions-gh-pages/create@master"
  secrets = ["GITHUB_TOKEN"]
}

// do something here to build your public directory

action "Push gh-pages" {
  uses = "tswicegood/github-actions-gh-pages/push@master"
  needs = ["Hugo Build"]
}
```

## Configuration

Each action exposes a couple of environment variables. For most use, you can probably leave it alone. To change them, adjust the [env][gh-actions-env], like this:

```markdown
action "Prep gh-pages" {
  uses = "tswicegood/github-actions-gh-pages/create@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
      DESTINATION = "./my-public"
  }
}
```

|   | Description | Default | Actions |
| - | ----------- | ------- | - |
| `DESTINATION` | Controls where the gh-pages repository is created | `./public` | `create`, `push` |
| `TARGET_BRANCH` | Controls which branch we want to publish. Note: Changing this will mess up gh-pages deployments | `gh-pages` | `create`, `push` |
| `GH_EMAIL` | Email address for commit | friendly-bot@example.com | `create` |
| `GH_NAME` | Name of the committer | Friendly GitHub Action Deploy Bot | `create` |


[1]: https://github.com/features/actions
[gh-actions-env]: https://developer.github.com/actions/creating-github-actions/accessing-the-runtime-environment/#environment-variables
