require 'ldclient-rb'

client = LaunchDarkly::LDClient.new(ENV.fetch('LAUNCH_DARKLY_SDK_KEY'))

context = LaunchDarkly::LDContext.with_key("test@test.com")
show_feature = client.variation("chaspy-test-flag", context, false)

if show_feature
  puts "true!"
else
  puts "false!"
end
