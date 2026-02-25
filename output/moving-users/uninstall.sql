-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moving_users_export_files', 'moving_users_number_files', 'moving_users_mail_send');

