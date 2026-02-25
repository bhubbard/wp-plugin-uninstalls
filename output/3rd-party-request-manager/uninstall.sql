-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsc3ppm_notify_frequency', 'nsc3ppm_new_hostnames', 'nsc3ppm_notify_email', 'nsc3ppm_notified_hostnames', 'nsc3ppm_data_retention', 'nsc3ppm_monitoring_enabled', 'nsc3ppm_enable_csp_rules', 'nsc3ppm_sample_percentage', 'nsc3ppm_allowed_hostnames');

