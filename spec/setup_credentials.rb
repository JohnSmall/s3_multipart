S3Multipart.configure do |config|
  config.bucket_name   = ENV['TEST_S3_BUCKET']
  config.s3_access_key = ENV['TEST_AWS_ACCESS_KEY_ID']
  config.s3_secret_key = ENV['TEST_AWS_SECRET_ACCESS_KEY']
end
