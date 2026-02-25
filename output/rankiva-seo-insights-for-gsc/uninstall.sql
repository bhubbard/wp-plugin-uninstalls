-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scso_gsc_property', 'scso_sync_state', 'scso_gsc_binding', 'scso_gsc_account_id', 'scso_use_proxy', 'scso_oauth_client_id', 'scso_oauth_client_secret', 'scso_gsc_token', 'scso_gsc_account_email', 'scso_last_sync_time', 'scso_db_version', 'scso_activation_redirect', 'scso_gsc_email', 'scso_sync_error', 'scso_sync_lock', 'scso_hide_dev_warning');

