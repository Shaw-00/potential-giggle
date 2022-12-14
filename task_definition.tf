resource "aws_ecs_task_definition" "task_definition" {
  family                     = "worker"
  requires_compatibilities   = ["FARGATE", "EC2"]
  container_definitions = data.template_file.task_definition_template.rendered
}