CarrierWave.configure do |config|
    config.storage    = :aws
    config.aws_bucket = ENV.fetch('S3_BUCKET')

    config.aws_credentials = {
    access_key_id:     ENV.fetch('S3_KEY'),
    secret_access_key: ENV.fetch('S3_SECRET'),
    region:            ENV.fetch('S3_REGION') # Required
    }

end