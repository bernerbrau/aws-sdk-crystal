Before("@glacier") do
  @service = Aws::Glacier::Resource.new
  @client = @service.client
end

After("@glacier") do
  # shared cleanup logic
end
