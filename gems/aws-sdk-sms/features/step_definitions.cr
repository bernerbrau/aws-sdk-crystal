Before("@sms") do
  @service = Aws::SMS::Resource.new
  @client = @service.client
end

After("@sms") do
  # shared cleanup logic
end
