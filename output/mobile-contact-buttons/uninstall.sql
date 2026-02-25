-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cubm_color', 'cubm_call', 'cubm_email', 'cubm_sms');

