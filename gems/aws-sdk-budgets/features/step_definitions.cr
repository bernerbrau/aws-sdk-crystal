Before("@budgets") do
  @service = Aws::Budgets::Resource.new
  @client = @service.client
end

After("@budgets") do
  # shared cleanup logic
end
