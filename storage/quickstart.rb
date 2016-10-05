# Copyright 2016 Google, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

def run_quickstart
  # [START storage_quickstart]
  # Imports the Google Cloud client library
  require "google/cloud"

  # Your Google Cloud Platform project ID
  project_id = "YOUR_PROJECT_ID"

  # Instantiates a client
  gcloud = Google::Cloud.new project_id
  storage_client = gcloud.storage

  # The name for the new bucket
  bucket_name = "my-new-bucket"

  # Creates the new bucket
  bucket = storage_client.create_bucket bucket_name

  puts "Bucket #{bucket.name} created."
  # [END storage_quickstart]
end

if __FILE__ == $PROGRAM_NAME
  run_quickstart
end