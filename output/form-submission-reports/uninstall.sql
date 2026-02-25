-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsrp_reports_days', 'fsrp_reports_schedule', 'fsrp_reports_admin_email', 'fsrp_activation_error', 'fsrp_reports_settings_saved');

