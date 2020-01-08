resource "aws_s3_bucket" "digitalgold" {
  bucket = "bucket.digitallgold.com"
}

resource "aws_s3_bucket_policy" "digitalgold" {
  bucket = "${aws_s3_bucket.digitalgold.id}"

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
      "Resource": "arn:aws:s3:::bucket.digitallgold.com/*"
    }
  ]
}
POLICY
}