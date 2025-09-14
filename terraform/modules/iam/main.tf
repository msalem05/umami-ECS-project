data "aws_iam_policy_document" "ecs_task_execution_role_assume" {
    statement {
        actions = ["sts:AssumeRole"]

        principals {
          type = "Service"
          identifiers = ["ecs-tasks.amazonaws.com"]
        }
    }

}

resource "aws_iam_role" "ecs_task_execution_role" {
    name = var.ecs_task_execution_role_name
    assume_role_policy = data.aws_iam_policy_document.ecs_task_execution_role_policy

}

data "aws_iam_policy_document" "ecs_task_execution" {
    statement {
        effect = "Allow"
        actions = [
            "ecr:GetAuthorizationToken",
        ]
        resources = ["*"]
    }

    statement {
        effect = "allow"
        actions = [
            "ecr:BatchGetImage",
            "ecr:GetDownloadUrlForLayer"
        ]
        resources = [aws_ecr_repositry.repo.arn]
    }
}

resource "aws_iam_role_policy_attachment" "ecs_task_execution" {
    role = aws_iam_role.ecs_task_execution_role.name
    policy_arn = aws_iam_role.ecs_task_execution_role.arn
}

data "aws_iam_policy_document" "assume_role" {

}