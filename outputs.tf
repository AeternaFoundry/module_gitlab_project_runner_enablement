output "project_runner_enablements_id" {
  description = "Map of id values across all project_runner_enablements, keyed the same as var.project_runner_enablements except keys with no id are omitted"
  value       = { for k, v in gitlab_project_runner_enablement.project_runner_enablements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_runner_enablements_project" {
  description = "Map of project values across all project_runner_enablements, keyed the same as var.project_runner_enablements except keys with no project are omitted"
  value       = { for k, v in gitlab_project_runner_enablement.project_runner_enablements : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_runner_enablements_runner_id" {
  description = "Map of runner_id values across all project_runner_enablements, keyed the same as var.project_runner_enablements except keys with no runner_id are omitted"
  value       = { for k, v in gitlab_project_runner_enablement.project_runner_enablements : k => v.runner_id if v.runner_id != null }
}

