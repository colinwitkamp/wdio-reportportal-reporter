action "install" {
  uses = "actions/npm@c555744"
  args = "install"
}

action "test" {
  uses = "actions/npm@c555744"
  args = "test"
  needs = ["install"]
}
