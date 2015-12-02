# Real Estate Events
asdf


## Collaboration

Please follow these guidelines when collaborating on the project:

### 1. Feature / Fix / Change = New Branch

Any features, fixes, or changes more complex than fixing a typo should be done
in a feature branch.

```
$ git checkout -b my-feature
```

### 2. Commit Early / Often

Don't keep ammending a commit, and don't save a day's worth of hacking for a
single commit. Bundle and commit related changes as atomically as possible. If
you want to clean things up before merging into master then squash commits
before merging.

### 3. Pull In Upstream Changes

Pull in changes using rebase, it maintains a cleaner history and won't disrupt your branch.

```bash
$ git fetch
$ git rebase origin/master
```

### 4. BDD / Outside In

No new features should be added without an acceptance test, or new scenarios
for an existing feature. Some older or untouched areas of the app may not have
a feature spec—if you are working on code in that area you should add new
tests for anything you are modifying.

### 5. Get Some Review

Before merging anything in you must open a pull request for your branch on
github. This lets us review the changes and give suggestions before features are
QA tested or pulled in.

## Dependencies

You'll be required to install the following libraries for development. Using
[Homebrew](http://mxcl.github.com/homebrew/) is pretty much required.

* postgresql
* phantomjs (For poltergeist)

## Bootstrapping

A bootstrapping script is included in the `script` directory to simplify setup
on a new machine.

For OSX:

```bash
$ ./script/bootstrap-osx
```

### Rails Testing (Rspec)

```bash
$ bundle exec rspec
```

### Javascript (Konacha)

Javascript tests are written in Mocha using the Chai assertion library, and are
run using [Konacha][konacha].

```bash
$ rake konacha:serve # Browser
```
Open your browser to `localhost:3500`. Your tests will run automatically.
Refresh the page to run the tests again.

### Continuous Integration
#### CURRENTLY NOT SETUP
The default rake task will run rspec, rspec integration tests, and konacha. Our
CI system, CircleCI, is integrated into GitHub and will automatically run for
every pushed branch or Pull Request.

## Development

### Ruby

There is a `.ruby-version` for the project that will automatically load for you
if you have rvm or rbenv installed. If you don't, run `cat .ruby-version` to
see which version of ruby we are using.

### Environment

To easily load environment variables during development, we use an `.env` file
that is autoloaded when rails starts. A sample `.env` file is included as
`.env.sample` with all sensitive values omitted. The simplest way to start with
it is to copy it:

```bash
$ cp .env.sample .env
```

## Deployment

The app is deployed to our servers on [Heroku](http://heroku.com) when pushes to
master pass Continuous Integration. Nothing should be committed to the master
branch that is not ready for production. This includes destructive migrations or
any migration that would cause incompatibility with running code.

## QA

All branches must pass a QA process before they are merged with master and
deployed to production. QA consists of (1) automated tests (2) code review and
(3) manual testing. The following process should be used for QA:

1. Open a pull request for your branch
2. [Reference](https://help.github.com/articles/writing-on-github/#issue-autocompletion)
   the issue(s) resolved by your branch in the pull request
3. Request code review by
   [mentioning](https://help.github.com/articles/writing-on-github/#name-and-team-mentions-autocomplete)
   your intended reviewer
4. Once your branch has passed code review, request manual testing by mentioning
   your intended tester.
5. QA will merge your branch into master if it passes manual testing
6. QA will monitor the #ops channel on Slack for deployments and verify the
   release on production

Using consistent language for QA will help us to avoid miscues that result in
premature merges and/or botched hand-offs between development and QA.

[konacha]: https://github.com/jfirebaugh/konacha
