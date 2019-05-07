workflow "Tests & Formatting" {
  on = "push"
  resolves = ["Tests", "Check Formatting"]
}

action "Get Deps" {
  uses = "dflima/mix-actions@v1.0"
  args = "deps.get"
}

action "Tests" {
  uses = "dflima/mix-actions@v1.0"
  needs = "Get Deps"
  args = "test"
}

action "Check Formatting" {
  uses = "dflima/mix-actions/format@v1.0"
  needs = "Get Deps"
}
