# frozen_string_literal: true

# Copyright (C) 2014-2020 MongoDB Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Mongo
  class Error
    # Exception that is raised when the server monitoring mode
    #   provided is invalid
    #
    # @since 2.4.2
    class InvalidServerMonitoringMode < Error
      # Instantiate the new exception.
      #
      # @example Instantiate the exception.
      #   Mongo::Error::InvalidServerMonitoringMode.new(option)
      #
      # @since 2.4.2
      def initialize(option)
        super("Invalid server monitoring mode: #{option}.
        Please ensure that it is one of \"auto\", \"polling\", or \"streaming\".")
      end
    end
  end
end
