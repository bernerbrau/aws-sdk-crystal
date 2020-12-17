Before("@s3") do
  @service = Aws::S3::Resource.new
  @client = @service.client
end

After("@s3") do
  # shared cleanup logic
end
