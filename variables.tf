variable "project_runner_enablements" {
  description = <<EOT
Map of project_runner_enablements, attributes below
Required:
    - project
    - runner_id
EOT

  type = map(object({
    project   = string
    runner_id = number
  }))
}

