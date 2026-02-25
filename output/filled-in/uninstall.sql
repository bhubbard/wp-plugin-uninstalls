-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filled_in', 'filled_in_ajax', 'filled_in_templates', 'filled_in_notice', 'filled_in_css', 'filled_in_cron_delete_failed', 'filled_in_smtp_host', 'filled_in_smtp_port', 'filled_in_smtp_ssl', 'filled_in_smtp_username', 'filled_in_smtp_password', 'filled_in_attachments', 'filled_in_uploads', 'filled_in_cookies', 'filled_in_recent_error', 'filled_in_recent_error_data', 'filled_in_notifications', 'filled_in_version', 'filled_in_cron_delete_failed_last_run');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ug_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('ug_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('ug_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ug_per_page');

