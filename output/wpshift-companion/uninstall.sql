-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpshift_user', 'wpshift_api_token', 'wpshift_connected_at', 'wpshift_email_settings', 'wpshift_site_health_token', 'wpshift_companion_version', 'wpshift_pending_import', 'wpshift_oauth_result', 'wpshift_import_error', 'wpshift_current_backup', 'wpshift_oauth_state', 'wpshift_connect_code', 'wpshift_site_status', 'wpshift_smtp_settings', 'wpshift_magic_login_error');
DELETE FROM wp_options WHERE option_name LIKE 'wpshift_backup_state_%';

