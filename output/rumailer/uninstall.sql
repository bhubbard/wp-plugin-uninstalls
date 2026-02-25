-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rumailer_setting_api', 'rumailer_setting_name', 'rumailer_setting_email');

