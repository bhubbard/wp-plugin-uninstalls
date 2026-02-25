-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('w91099ch_w9_page_id', 'w91099ch_manual_plugins', 'w91099ch_hidden_plugins', 'w91099ch_profile_last_sync', 'w91099ch_plugin_last_sync', 'w91099ch_affiliates_last_sync', 'w91099ch_affiliates_count', 'w91099ch_user_email', 'w91099ch_admin_consent', 'w91099ch_credentials_valid', 'w91099ch_site_url', 'w91099ch_connected_at', 'w91099ch_last_checked', 'w91099ch_team_last_sync', 'active_sitewide_plugins', 'woocommerce_currency', 'w91099ch_debug_logging', 'w91099ch_excluded_affiliate_ids', 'w91099ch_active_plugins_snapshot', 'w91099ch_plugins_last_sync', 'w91099ch_credentials', 'w91099ch_connected', 'w91099ch_client_id', 'w91099ch_client_secret', 'w91099ch_access_token', 'w91099ch_refresh_token', 'w91099ch_db_version', 'w91099ch_encryption_key', 'w91099ch_workspace', 'w91099ch_excluded_forms', 'w91099ch_activated', 'w91099ch_connection_error', 'w91099ch_connection_success', 'w91099ch_handshake_active', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'w91099ch_pending_credentials_%';
DELETE FROM wp_options WHERE option_name LIKE 'w91099ch_private_key_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcv_store_name', 'dokan_store_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcv_store_name', 'dokan_store_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcv_store_name', 'dokan_store_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcv_store_name', 'dokan_store_name');

