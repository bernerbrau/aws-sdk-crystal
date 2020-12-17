Before("@cloudfront") do
  @service = Aws::CloudFront::Resource.new
  @client = @service.client
end

After("@cloudfront") do
  # shared cleanup logic
end
