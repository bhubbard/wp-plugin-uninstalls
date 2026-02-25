-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('podbase_temp_state', 'podbase_temp_state_time', 'podbase_temp_state_user_id', 'podbase_internal_store_id', 'podbase_disconnect_token', 'podbase_key_id', 'podbase_connected', 'podbase_connection_date', 'podbase_aae_store_url');

