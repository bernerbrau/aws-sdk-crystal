# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require "aws-sdk-core/waiters"

module Aws::EMR
  # Waiters are utility methods that poll for a particular state to occur
  # on a client. Waiters can fail after a number of attempts at a polling
  # interval defined for the service client.
  #
  # For a list of operations that can be waited for and the
  # client methods called for each operation, see the table below or the
  # {Client#wait_until} field documentation for the {Client}.
  #
  # # Invoking a Waiter
  # To invoke a waiter, call #wait_until on a {Client}. The first parameter
  # is the waiter name, which is specific to the service client and indicates
  # which operation is being waited for. The second parameter is a hash of
  # parameters that are passed to the client method called by the waiter,
  # which varies according to the waiter name.
  #
  # # Wait Failures
  # To catch errors in a waiter, use WaiterFailed,
  # as shown in the following example.
  #
  #     rescue rescue Aws::Waiters::Errors::WaiterFailed => error
  #       puts "failed waiting for instance running: #{error.message}
  #     end
  #
  # # Configuring a Waiter
  # Each waiter has a default polling interval and a maximum number of
  # attempts it will make before returning control to your program.
  # To set these values, use the `max_attempts` and `delay` parameters
  # in your `#wait_until` call.
  # The following example waits for up to 25 seconds, polling every five seconds.
  #
  #     client.wait_until(...) do |w|
  #       w.max_attempts = 5
  #       w.delay = 5
  #     end
  #
  # To disable wait failures, set the value of either of these parameters
  # to `nil`.
  #
  # # Extending a Waiter
  # To modify the behavior of waiters, you can register callbacks that are
  # triggered before each polling attempt and before waiting.
  #
  # The following example implements an exponential backoff in a waiter
  # by doubling the amount of time to wait on every attempt.
  #
  #     client.wait_until(...) do |w|
  #       w.interval = 0 # disable normal sleep
  #       w.before_wait do |n, resp|
  #         sleep(n ** 2)
  #       end
  #     end
  #
  # # Available Waiters
  #
  # The following table lists the valid waiter names, the operations they call,
  # and the default `:delay` and `:max_attempts` values.
  #
  # | waiter_name        | params                    | :delay   | :max_attempts |
  # | ------------------ | ------------------------- | -------- | ------------- |
  # | cluster_running    | {Client#describe_cluster} | 30       | 60            |
  # | cluster_terminated | {Client#describe_cluster} | 30       | 60            |
  # | step_complete      | {Client#describe_step}    | 30       | 60            |
  #
  module Waiters

    class ClusterRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "RUNNING"
              },
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "WAITING"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "TERMINATING"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "TERMINATED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "TERMINATED_WITH_ERRORS"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_cluster)
      # @return (see Client#describe_cluster)
      def wait(**params)
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ClusterTerminated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "TERMINATED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "TERMINATED_WITH_ERRORS"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_cluster)
      # @return (see Client#describe_cluster)
      def wait(**params)
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class StepComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_step,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "step.status.state",
                "expected" => "COMPLETED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "step.status.state",
                "expected" => "FAILED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "step.status.state",
                "expected" => "CANCELLED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_step)
      # @return (see Client#describe_step)
      def wait(**params)
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
