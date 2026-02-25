-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moving_contents_number_files', 'moving_contents_mail_send', 'moving_contents_export_files', 'moving_contents_max_execution_time');

