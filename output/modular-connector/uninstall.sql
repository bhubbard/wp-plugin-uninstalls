-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_modular_connection_client_id', '_modular_connection_client_secret', '_modular_connection_access_token', '_modular_connection_refresh_token', '_modular_connection_expires_in', '_modular_connection_connected_at', '_modular_connection_used_at', 'vhp_varnish_ip', '_modular_linking_registered', '_modular_connector_database_version', 'update_core', 'doing_cron');
DELETE FROM wp_options WHERE option_name LIKE '%_reserved_at';
DELETE FROM wp_options WHERE option_name LIKE '%_attempts';
DELETE FROM wp_options WHERE option_name LIKE '%_available_at';
DELETE FROM wp_options WHERE option_name LIKE '%_created_at';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aiowps_last_login_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('aiowps_last_login_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('aiowps_last_login_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aiowps_last_login_time');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%enforcement_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%enforcement_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%enforcement_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enforcement_state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%grace_period_expiry';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%grace_period_expiry';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%grace_period_expiry';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%grace_period_expiry';

