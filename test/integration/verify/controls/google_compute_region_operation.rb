# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    Type: MMv1     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

title 'Test GCP google_compute_region_operation resource.'

gcp_project_id = attribute(:gcp_project_id, default: 'gcp_project_id', description: 'The GCP project identifier.')
region_operation = attribute('region_operation', default: {
  "name": "operation-1641188435323-5d4a6f5b26934-9281422c-dce238f5",
  "region": "us-central1",
  "operation_type": "compute.instanceGroupManagers.insert",
  "status": "DONE",
  "progress": 100
}, description: 'Operation resources contained within the specified region')
control 'google_compute_region_operation-1.0' do
  impact 1.0
  title 'google_compute_region_operation resource test'

  describe google_compute_region_operation(project: gcp_project_id, region: region_operation['region'], name: region_operation['name']) do
  it { should exist }
  its('name') { should eq region_operation['name'] }
  its('status') { should eq region_operation['status'] }
  its('progress') { should eq region_operation['progress'] }
  end

  describe google_compute_region_operation(project: gcp_project_id, region: region_operation['region'], name: 'nonexistent') do
  it { should_not exist }
  end
end
