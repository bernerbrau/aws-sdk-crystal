Before("@cognitoidentity") do
  @service = Aws::CognitoIdentity::Resource.new
  @client = @service.client
end

After("@cognitoidentity") do
  # shared cleanup logic
end
