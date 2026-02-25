-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srym_sms_start_time', 'srym_sms_end_time', 'srym_sms_enabled');

