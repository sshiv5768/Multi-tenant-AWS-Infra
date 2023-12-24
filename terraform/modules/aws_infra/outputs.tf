output "state_ec2_public_dns" {
  value = aws_instance.state_ec2.public_ip
}
 output "state_s3_bucket" {
   value = aws_s3_bucket.state_s3_bucket
 }