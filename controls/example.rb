# encoding: utf-8
# copyright: 2018, The Authors

title 'splunk-profile'

control 'splunk-1.0' do                        # A unique ID for this control
  impact 1.0                                # The criticality, if this control fails.
  title 'Check if splunk is installed'             # A human-readable title
  desc 'check if splunk package is installed or not'
  describe package('splunk') do                  # The actual test
    it { should be_installed }
  end
end
