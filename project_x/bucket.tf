resource "aws_s3_bucket" "prodbitex" {
  bucket = "bucket.prodbitex.com"
}

resource "aws_s3_bucket_policy" "prodbitex" {
  bucket = "${aws_s3_bucket.prodbitex.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadForGetBucketObjects",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::bucket.prodbitex.com/*"
    }
  ]
}
POLICY
}