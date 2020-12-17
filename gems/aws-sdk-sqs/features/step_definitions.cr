Before("@sqs") do
  @service = Aws::SQS::Resource.new
  @client = @service.client
end

After("@sqs") do
  # shared cleanup logic
end
