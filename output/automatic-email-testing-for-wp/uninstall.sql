-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('email_setting_field', 'aet_log', 'aet_mail_error');

