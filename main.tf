resource "gitlab_project_runner_enablement" "project_runner_enablements" {
  for_each = var.project_runner_enablements

  project   = each.value.project
  runner_id = each.value.runner_id
}

