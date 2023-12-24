output "multi_az_infrastructur_outputs" {
  value = {
    for az, infrastructure in module.aws_infra :
    az => {
      ec2_public_ip = infrastructure.state_ec2_public_dns
      s3_bucket     = infrastructure.state_s3_bucket
    }
  }
}