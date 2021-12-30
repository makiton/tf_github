resource "github_branch_default" "default" {
  repository = github_repository.repository.name
  branch = "main"
}
